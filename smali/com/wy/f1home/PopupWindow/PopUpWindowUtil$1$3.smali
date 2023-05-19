.class Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;
.super Ljava/lang/Object;
.source "PopUpWindowUtil.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->initWindow()V
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

    .line 128
    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    iget-object v0, v0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 133
    iget-object v1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    iget-object v1, v1, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v1}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 134
    iget-object v1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;->this$1:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    iget-object v1, v1, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v1}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
