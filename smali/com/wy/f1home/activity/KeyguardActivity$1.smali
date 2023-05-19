.class Lcom/wy/f1home/activity/KeyguardActivity$1;
.super Ljava/lang/Object;
.source "KeyguardActivity.java"

# interfaces
.implements Lcom/wy/f1home/uitl/SimListener$SimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wy/f1home/activity/KeyguardActivity;->initSimStateListener()V
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

    .line 160
    iput-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$1;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DisplayCarrierText(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$1;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object p1, p1, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$1;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    iget-object p1, p1, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :goto_0
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$1;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-virtual {p1}, Lcom/wy/f1home/activity/KeyguardActivity;->getCarrierText()V

    return-void
.end method

.method public onSimNotify()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "onSimNotify"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$1;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-virtual {v0}, Lcom/wy/f1home/activity/KeyguardActivity;->SendNoSimNotify()V

    return-void
.end method

.method public onSimStateChanged()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$1;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-virtual {v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getCarrierText()V

    return-void
.end method
