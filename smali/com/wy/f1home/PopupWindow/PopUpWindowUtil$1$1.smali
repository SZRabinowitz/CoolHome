.class Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$1;
.super Ljava/lang/Object;
.source "PopUpWindowUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;


# direct methods
.method constructor <init>(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$1;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "wuyu"

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "initEvent onItemClick position = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "wuyu"

    const-string p2, "clean all"

    .line 98
    invoke-static {p1, p2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.wuyu.COMMAND_NOTIFICATION_LISTENER_SERVICE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "command"

    const-string p3, "clearall"

    .line 100
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object p2, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$1;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    iget-object p2, p2, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {p2}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$1;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    iget-object p1, p1, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {p1}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$300(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Lcom/wy/f1home/PopupWindow/CommonPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
