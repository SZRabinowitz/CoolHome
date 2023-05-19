.class public Lcom/wy/f1home/Notification/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/Notification/MainActivity$cancelNotificationCallBack;
    }
.end annotation


# static fields
.field public static mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

.field static mCallBack:Lcom/wy/f1home/Notification/MainActivity$cancelNotificationCallBack;

.field private static mKey:Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/wy/f1home/Notification/NotificationAdapter;

.field mEmpty:Landroid/widget/TextView;

.field mNotificationList:Landroid/widget/ListView;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getButtomBarView()Lcom/wy/f1home/Keyguard/ButtomBarView;
    .locals 1

    .line 159
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    return-object v0
.end method

.method public static setcancelNotificationCallBack(Lcom/wy/f1home/Notification/MainActivity$cancelNotificationCallBack;)V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "Notification setcancelNotificationCallBack"

    .line 221
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sput-object p0, Lcom/wy/f1home/Notification/MainActivity;->mCallBack:Lcom/wy/f1home/Notification/MainActivity$cancelNotificationCallBack;

    return-void
.end method


# virtual methods
.method public changStatusIconCollor(Z)V
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/wy/f1home/Notification/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 133
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "wuyu"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification onKeyDown ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_4

    const/16 v2, 0x52

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;

    if-eqz p1, :cond_1

    if-ne v0, v3, :cond_1

    .line 169
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mCallBack:Lcom/wy/f1home/Notification/MainActivity$cancelNotificationCallBack;

    invoke-virtual {p1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/wy/f1home/Notification/MainActivity$cancelNotificationCallBack;->cancelNotification_ext(Ljava/lang/String;)V

    :cond_1
    return v3

    :cond_2
    const-string p1, ""

    .line 175
    sget-object v1, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->getmStringRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    if-ne v0, v3, :cond_3

    .line 176
    invoke-static {p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->getPopUpWindowUtilInstace(Landroid/app/Activity;)Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->createPopUpWindow(Landroid/view/View;)V

    :cond_3
    return v3

    .line 185
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 0

    .line 228
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 230
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    return-void
.end method

.method public initButtonBar()V
    .locals 4

    const v0, 0x7f090065

    .line 140
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Notification/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v0, Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-direct {v0, p0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    .line 144
    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/Notification/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setBackgroundColor(I)V

    .line 151
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/Notification/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarCenter(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {v0, v1, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Notification/MainActivity;->changStatusIconCollor(Z)V

    const p1, 0x7f0c001e

    .line 60
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Notification/MainActivity;->setContentView(I)V

    .line 62
    invoke-static {p0}, Lcom/wy/f1home/Notification/NotificationAdapter;->setrefreshButtomBarViewCallBack(Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;)V

    const p1, 0x7f090079

    .line 64
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Notification/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    const p1, 0x7f09004f

    .line 65
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Notification/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mEmpty:Landroid/widget/TextView;

    .line 66
    new-instance p1, Lcom/wy/f1home/Notification/NotificationAdapter;

    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mEmpty:Landroid/widget/TextView;

    invoke-direct {p1, p0, v0}, Lcom/wy/f1home/Notification/NotificationAdapter;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mAdapter:Lcom/wy/f1home/Notification/NotificationAdapter;

    .line 67
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mAdapter:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-virtual {p1}, Lcom/wy/f1home/Notification/NotificationAdapter;->notifyDataSetChanged()V

    .line 68
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mAdapter:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/wy/f1home/Notification/MainActivity;->initButtonBar()V

    .line 75
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/wy/f1home/Notification/NLService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/wy/f1home/Notification/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string p1, "wuyu"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "wuyu"

    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onItemClick position = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wy/f1home/Notification/NotificationItemInfo;

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "wuyu"

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "info.getmPendingIntent().send() e = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "wuyu"

    .line 103
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onItemSelected position = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wy/f1home/Notification/NotificationItemInfo;

    iput-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;

    .line 107
    iget-object p1, p0, Lcom/wy/f1home/Notification/MainActivity;->mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {p1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmIsCleanAble()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 109
    sget-object p1, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/Notification/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0f002b

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    sget-object p1, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string p1, "wuyu"

    const-string v0, "onNothingSelected "

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshButtomBarView_ext()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const-string v1, "wuyu"

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshButtomBarView_ext pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mNotificationList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/Notification/NotificationItemInfo;

    const-string v1, "wuyu"

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshButtomBarView_ext view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 203
    iput-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;

    const-string v0, "wuyu"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshButtomBarView_ext mSelectInfo.getmIsCleanAble() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wy/f1home/Notification/MainActivity;->mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v2}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmIsCleanAble()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/wy/f1home/Notification/MainActivity;->mSelectInfo:Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v0}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmIsCleanAble()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/Notification/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Lcom/wy/f1home/Notification/MainActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
