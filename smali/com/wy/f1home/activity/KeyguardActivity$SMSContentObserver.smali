.class public Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/activity/KeyguardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSContentObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/wy/f1home/activity/KeyguardActivity;


# direct methods
.method public constructor <init>(Lcom/wy/f1home/activity/KeyguardActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    .line 462
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 463
    iput-object p3, p0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "wuyu"

    const-string v0, "SMSContentObserver onChange"

    .line 468
    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x33a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    iget-object p1, p0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 471
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;->this$0:Lcom/wy/f1home/activity/KeyguardActivity;

    invoke-static {v0}, Lcom/wy/f1home/activity/KeyguardActivity;->access$000(Lcom/wy/f1home/activity/KeyguardActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
