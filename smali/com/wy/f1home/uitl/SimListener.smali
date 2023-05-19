.class public Lcom/wy/f1home/uitl/SimListener;
.super Ljava/lang/Object;
.source "SimListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/uitl/SimListener$SimStateListener;,
        Lcom/wy/f1home/uitl/SimListener$SimStateReceive;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimStateListener:Lcom/wy/f1home/uitl/SimListener$SimStateListener;

.field private receiver:Lcom/wy/f1home/uitl/SimListener$SimStateReceive;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/wy/f1home/uitl/SimListener;->mContext:Landroid/content/Context;

    .line 19
    new-instance p1, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;

    invoke-direct {p1, p0}, Lcom/wy/f1home/uitl/SimListener$SimStateReceive;-><init>(Lcom/wy/f1home/uitl/SimListener;)V

    iput-object p1, p0, Lcom/wy/f1home/uitl/SimListener;->receiver:Lcom/wy/f1home/uitl/SimListener$SimStateReceive;

    return-void
.end method

.method static synthetic access$000(Lcom/wy/f1home/uitl/SimListener;)Lcom/wy/f1home/uitl/SimListener$SimStateListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/wy/f1home/uitl/SimListener;->mSimStateListener:Lcom/wy/f1home/uitl/SimListener$SimStateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/wy/f1home/uitl/SimListener;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/wy/f1home/uitl/SimListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public register(Lcom/wy/f1home/uitl/SimListener$SimStateListener;)V
    .locals 2

    .line 23
    iput-object p1, p0, Lcom/wy/f1home/uitl/SimListener;->mSimStateListener:Lcom/wy/f1home/uitl/SimListener$SimStateListener;

    .line 24
    iget-object p1, p0, Lcom/wy/f1home/uitl/SimListener;->receiver:Lcom/wy/f1home/uitl/SimListener$SimStateReceive;

    if-eqz p1, :cond_0

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/wy/f1home/uitl/SimListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wy/f1home/uitl/SimListener;->receiver:Lcom/wy/f1home/uitl/SimListener$SimStateReceive;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/wy/f1home/uitl/SimListener;->receiver:Lcom/wy/f1home/uitl/SimListener$SimStateReceive;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/wy/f1home/uitl/SimListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
