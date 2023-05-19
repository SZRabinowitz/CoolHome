.class Lcom/wy/f1home/activity/KeyguardActivity$2;
.super Ljava/lang/Object;
.source "KeyguardActivity.java"

# interfaces
.implements Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wy/f1home/activity/KeyguardActivity;->initBatteryListener()V
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

    .line 196
    iput-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/content/Intent;)V
    .locals 11

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 201
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    .line 202
    div-int/2addr v2, v1

    const-string v3, "status"

    const/4 v4, -0x1

    .line 204
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_1

    const/4 v8, 0x5

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v7

    :goto_1
    const-string v8, "plugged"

    .line 207
    invoke-virtual {p1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    if-ne p1, v7, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    const-string v8, "wuyu"

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyguardActivity onStateChanged isCharging = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "wuyu"

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyguardActivity onStateChanged chargePlug = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wuyu"

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyguardActivity onStateChanged usbCharge = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wuyu"

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyguardActivity onStateChanged acCharge = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 215
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object p1, p1, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_4

    const-string p1, "wuyu"

    const-string v3, "\u624b\u673a\u6b63\u5904\u4e8eUSB\u8fde\u63a5\uff01"

    .line 217
    invoke-static {p1, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_6

    const-string p1, "wuyu"

    const-string v3, "\u624b\u673a\u901a\u8fc7\u7535\u6e90\u5145\u7535\u4e2d\uff01"

    .line 220
    invoke-static {p1, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 223
    :cond_5
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object p1, p1, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "wuyu"

    const-string v3, "\u624b\u673a\u672a\u8fde\u63a5USB\u7ebf\uff01"

    .line 224
    invoke-static {p1, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    const-string p1, "wuyu"

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyguardActivity onStateChanged current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wuyu"

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardActivity onStateChanged total = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wuyu"

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardActivity onStateChanged percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ne v2, p1, :cond_7

    .line 231
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object p1, p1, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Lcom/wy/f1home/activity/KeyguardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 234
    :cond_7
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object p1, p1, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Lcom/wy/f1home/activity/KeyguardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public onStateLow()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onStateLow"

    .line 240
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStateOkay()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onStateOkay"

    .line 245
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatePowerConnected()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onStatePowerConnected"

    .line 250
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object v0, v0, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStatePowerDisconnected()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onStatePowerDisconnected"

    .line 256
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$2;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object v0, v0, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
