.class Lcom/wy/f1home/activity/KeyguardActivity$4;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/activity/KeyguardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/activity/KeyguardActivity;


# direct methods
.method constructor <init>(Lcom/wy/f1home/activity/KeyguardActivity;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$4;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 1010
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    .line 1003
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    const-string p1, "wuyu"

    const-string v0, "onDataConnectionStateChanged"

    .line 1004
    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$4;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-virtual {p1}, Lcom/wy/f1home/activity/KeyguardActivity;->updateCarrierText()V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1020
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    const-string p1, "wuyu"

    const-string v0, "onSignalStrengthsChanged"

    .line 1021
    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .locals 0

    .line 1015
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onUserMobileDataStateChanged(Z)V

    return-void
.end method
