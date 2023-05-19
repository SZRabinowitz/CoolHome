.class public interface abstract Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/BatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryStateListener"
.end annotation


# virtual methods
.method public abstract onStateChanged(Landroid/content/Intent;)V
.end method

.method public abstract onStateLow()V
.end method

.method public abstract onStateOkay()V
.end method

.method public abstract onStatePowerConnected()V
.end method

.method public abstract onStatePowerDisconnected()V
.end method
