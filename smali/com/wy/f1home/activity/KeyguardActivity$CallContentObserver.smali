.class public Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/activity/KeyguardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallContentObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/wy/f1home/activity/KeyguardActivity;


# direct methods
.method public constructor <init>(Lcom/wy/f1home/activity/KeyguardActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    .line 480
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 481
    iput-object p3, p0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "wuyu"

    const-string v0, "CallContentObserver onChange"

    .line 486
    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x4b6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 489
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-static {v0}, Lcom/wy/f1home/activity/KeyguardActivity;->access$100(Lcom/wy/f1home/activity/KeyguardActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
