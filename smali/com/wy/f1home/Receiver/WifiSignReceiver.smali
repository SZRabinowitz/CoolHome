.class public Lcom/wy/f1home/Receiver/WifiSignReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiSignReceiver.java"

# interfaces
.implements Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;
    }
.end annotation


# static fields
.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_WIFI:I = 0x1

.field static mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;


# instance fields
.field wifi_sign_intent:Landroid/app/PendingIntent;

.field wifi_sign_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getTopActivityInfo(Landroid/content/Context;)Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;
    .locals 3

    const-string v0, "activity"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 136
    new-instance v0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;

    invoke-direct {v0}, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_0

    .line 139
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 140
    iget-object p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object p1, v0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->packageName:Ljava/lang/String;

    const-string p1, ""

    .line 141
    iput-object p1, v0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->topActivityName:Ljava/lang/String;

    const-string p1, "wuyu"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info.packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private showNormalDialog(Landroid/content/Context;)V
    .locals 3

    const-string v0, "wuyu"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAlertDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Receiver/WifiSignReceiver;->createDialog_ext(Landroid/content/Context;)Lcom/wy/f1home/uitl/QueryDialog;

    move-result-object p1

    sput-object p1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    .line 52
    sget-object p1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {p1, p0}, Lcom/wy/f1home/uitl/QueryDialog;->setOnQueryDialogButtonClickListener(Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;)V

    .line 53
    sget-object p1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/QueryDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_0
    const-string p1, "wuyu"

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAlertDialog.isShowing() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {v1}, Lcom/wy/f1home/uitl/QueryDialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/QueryDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 57
    sget-object p1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/QueryDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public OnQueryDialogButtonClick(Landroid/view/View;I)V
    .locals 2

    const-string p1, "wuyu"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnQueryDialogButtonClick position= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->wifi_sign_intent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "wuyu"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNormalDialog.send() e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    sget-object p1, Lcom/wy/f1home/Receiver/WifiSignReceiver;->mAlertDialog:Lcom/wy/f1home/uitl/QueryDialog;

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/QueryDialog;->dismiss()V

    return-void
.end method

.method public createDialog_ext(Landroid/content/Context;)Lcom/wy/f1home/uitl/QueryDialog;
    .locals 4

    .line 98
    iget v0, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->wifi_sign_type:I

    const v1, 0x7f0f0035

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/wy/f1home/uitl/QueryDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/wy/f1home/uitl/QueryDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public getTopActivityPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 155
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "wuyu"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSignReceiver intent.getAction() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wifi_sign_intent"

    .line 36
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->wifi_sign_intent:Landroid/app/PendingIntent;

    const-string v0, "NOTE_NETWORK_SIGN_IN"

    const/4 v1, -0x1

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->wifi_sign_type:I

    const-string p2, "wuyu"

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi_sign_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->wifi_sign_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "wuyu"

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiSignReceiver intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/wy/f1home/Receiver/WifiSignReceiver;->wifi_sign_intent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "wuyu"

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings.Secure.getInt(context.getContentResolver(), user_setup_complete, 0) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.android.browser"

    .line 41
    invoke-direct {p0, p1}, Lcom/wy/f1home/Receiver/WifiSignReceiver;->getTopActivityInfo(Landroid/content/Context;)Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.mtl.provision"

    invoke-direct {p0, p1}, Lcom/wy/f1home/Receiver/WifiSignReceiver;->getTopActivityInfo(Landroid/content/Context;)Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wy/f1home/Receiver/WifiSignReceiver$TopActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "user_setup_complete"

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/wy/f1home/Receiver/WifiSignReceiver;->showNormalDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
