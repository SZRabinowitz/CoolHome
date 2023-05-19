.class public Lcom/wy/f1home/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# static fields
.field private static INSTANCE:Lcom/wy/f1home/HomeApplication;


# instance fields
.field mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 28
    sput-object p0, Lcom/wy/f1home/HomeApplication;->INSTANCE:Lcom/wy/f1home/HomeApplication;

    return-void
.end method

.method public static getInstance()Lcom/wy/f1home/HomeApplication;
    .locals 2

    .line 20
    sget-object v0, Lcom/wy/f1home/HomeApplication;->INSTANCE:Lcom/wy/f1home/HomeApplication;

    if-eqz v0, :cond_0

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HomeApplication is not running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "wuyu"

    const-string v1, "HomeApplication onCreate"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Lcom/wy/f1home/uitl/PackageInfoUtil;

    invoke-direct {v0, p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    .line 37
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getAllApp(Landroid/content/Context;)Ljava/util/List;

    .line 38
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->loadCustomizeApp(Landroid/content/Context;)Ljava/util/List;

    .line 39
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->loadShortCutsApp(Landroid/content/Context;)Ljava/util/List;

    .line 40
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->splitCustomizeApps(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/wy/f1home/uitl/PackageInfoUtil;->VerifyNewApps()V

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    invoke-virtual {p0, v1, v0}, Lcom/wy/f1home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    invoke-virtual {p0, v1, v0}, Lcom/wy/f1home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 67
    iget-object v0, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    invoke-virtual {p0, v0}, Lcom/wy/f1home/HomeApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public removeHomeCallback(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    invoke-virtual {v0, p1}, Lcom/wy/f1home/uitl/PackageInfoUtil;->removeCallback(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)V

    return-void
.end method

.method public setHomeCallback(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)Lcom/wy/f1home/uitl/PackageInfoUtil;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    invoke-virtual {v0, p1}, Lcom/wy/f1home/uitl/PackageInfoUtil;->addCallback(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)V

    .line 57
    iget-object p1, p0, Lcom/wy/f1home/HomeApplication;->mModel:Lcom/wy/f1home/uitl/PackageInfoUtil;

    return-object p1
.end method
