.class Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/BatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/uitl/BatteryListener;


# direct methods
.method private constructor <init>(Lcom/wy/f1home/uitl/BatteryListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wy/f1home/uitl/BatteryListener;Lcom/wy/f1home/uitl/BatteryListener$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcom/wy/f1home/uitl/BatteryListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 71
    :pswitch_0
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "wuyu"

    const-string p2, "BatteryBroadcastReceiver --> onReceive--> ACTION_POWER_DISCONNECTED"

    .line 72
    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;->onStatePowerDisconnected()V

    goto :goto_1

    .line 65
    :pswitch_1
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "wuyu"

    const-string p2, "BatteryBroadcastReceiver --> onReceive--> ACTION_POWER_CONNECTED"

    .line 66
    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;->onStatePowerConnected()V

    goto :goto_1

    .line 59
    :pswitch_2
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "wuyu"

    const-string p2, "BatteryBroadcastReceiver --> onReceive--> ACTION_BATTERY_OKAY"

    .line 60
    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;->onStateOkay()V

    goto :goto_1

    .line 53
    :pswitch_3
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "wuyu"

    const-string p2, "BatteryBroadcastReceiver --> onReceive--> ACTION_BATTERY_LOW"

    .line 54
    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;->onStateLow()V

    goto :goto_1

    .line 47
    :pswitch_4
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "wuyu"

    const-string v0, "BatteryBroadcastReceiver --> onReceive--> ACTION_BATTERY_CHANGED"

    .line 48
    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/wy/f1home/uitl/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/wy/f1home/uitl/BatteryListener;

    invoke-static {p1}, Lcom/wy/f1home/uitl/BatteryListener;->access$100(Lcom/wy/f1home/uitl/BatteryListener;)Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;->onStateChanged(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7606c095 -> :sswitch_4
        -0x7073f927 -> :sswitch_3
        -0x5bb23923 -> :sswitch_2
        0x1d398bfd -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
