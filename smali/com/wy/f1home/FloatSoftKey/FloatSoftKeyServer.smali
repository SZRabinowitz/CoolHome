.class public Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;
.super Landroid/app/Service;
.source "FloatSoftKeyServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "wuyu"

.field private static mWindowManager:Landroid/view/WindowManager;

.field private static mWindowView:Landroid/view/View;

.field private static wmParams:Landroid/view/WindowManager$LayoutParams;


# instance fields
.field mReceiver:Lcom/wy/f1home/FloatSoftKey/FloatSoftReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private addWindowView2Window()V
    .locals 3

    const-string v0, "wuyu"

    const-string v1, "addWindowView2Window"

    .line 79
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowView:Landroid/view/View;

    sget-object v2, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static displayFloatSoftKey(Z)V
    .locals 2

    .line 100
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 102
    sget-object p0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 104
    :cond_0
    sget-object p0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "initView"

    .line 74
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;

    invoke-direct {v0, p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowView:Landroid/view/View;

    return-void
.end method

.method private initWindowParams()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "initWindowParams"

    .line 62
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->getApplication()Landroid/app/Application;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 65
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    .line 66
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x8

    .line 67
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x53

    .line 68
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    .line 69
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x1e

    .line 70
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    invoke-direct {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->initWindowParams()V

    .line 31
    invoke-direct {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->initView()V

    .line 32
    invoke-direct {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->addWindowView2Window()V

    .line 44
    invoke-virtual {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FloatSoftKeyDisplay"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wuyu"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FloatSoftKeyDisplay"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    invoke-virtual {p0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FloatSoftKeyDisplay"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowView:Landroid/view/View;

    if-eqz v0, :cond_0

    const-string v0, "wuyu"

    const-string v1, "removeView"

    .line 90
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mWindowView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const-string v0, "wuyu"

    const-string v1, "onDestroy"

    .line 93
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "FloatSoftKeyServer onStartCommand"

    .line 57
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method registerReceiver_ext()V
    .locals 2

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "kika.ime.state.on.kt9"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "kika.ime.state.on.Kt9"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "kika.ime.state.on.KT9"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "kika.ime.state.on.abc"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "kika.ime.state.on.ABC"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "kika.ime.state.on.kt9"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "kika.ime.state.on.123"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/wy/f1home/FloatSoftKey/FloatSoftReceiver;

    invoke-direct {v1}, Lcom/wy/f1home/FloatSoftKey/FloatSoftReceiver;-><init>()V

    iput-object v1, p0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mReceiver:Lcom/wy/f1home/FloatSoftKey/FloatSoftReceiver;

    .line 126
    iget-object v1, p0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->mReceiver:Lcom/wy/f1home/FloatSoftKey/FloatSoftReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method updateWindowViewParams(II)V
    .locals 1

    .line 111
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method
