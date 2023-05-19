.class public Lcom/wy/f1home/uitl/BatteryListener;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;,
        Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mBatteryStateListener:Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

.field private mContext:Landroid/content/Context;

.field private receiver:Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener;->mContext:Landroid/content/Context;

    .line 18
    new-instance p1, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcom/wy/f1home/uitl/BatteryListener;Lcom/wy/f1home/uitl/BatteryListener$1;)V

    iput-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener;->receiver:Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/wy/f1home/uitl/BatteryListener;->mBatteryStateListener:Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    return-object p0
.end method


# virtual methods
.method public register(Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;)V
    .locals 2

    .line 22
    iput-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener;->mBatteryStateListener:Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    .line 23
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener;->receiver:Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;

    if-eqz p1, :cond_0

    .line 24
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_LOW"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_OKAY"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/wy/f1home/uitl/BatteryListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wy/f1home/uitl/BatteryListener;->receiver:Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/wy/f1home/uitl/BatteryListener;->receiver:Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/wy/f1home/uitl/BatteryListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
