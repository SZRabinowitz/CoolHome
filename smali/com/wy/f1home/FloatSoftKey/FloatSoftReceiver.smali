.class public Lcom/wy/f1home/FloatSoftKey/FloatSoftReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FloatSoftReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public startServerAndSetText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {p2}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->updateText(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 54
    invoke-static {p1}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->displayFloatSoftKey(Z)V

    return-void
.end method

.method public stopServer(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 59
    invoke-static {p1}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyServer;->displayFloatSoftKey(Z)V

    return-void
.end method
