.class Lcom/wy/f1home/activity/KeyguardActivity$3;
.super Ljava/lang/Object;
.source "KeyguardActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 512
    iput-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$3;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const-string v0, "wuyu"

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x33a

    if-ne v0, v1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$3;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-static {p1}, Lcom/wy/f1home/activity/KeyguardActivity;->access$000(Lcom/wy/f1home/activity/KeyguardActivity;)I

    goto :goto_0

    .line 519
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4b6

    if-ne v0, v1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$3;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-static {p1}, Lcom/wy/f1home/activity/KeyguardActivity;->access$100(Lcom/wy/f1home/activity/KeyguardActivity;)I

    goto :goto_0

    .line 521
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4b7

    if-ne p1, v0, :cond_2

    .line 522
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$3;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
