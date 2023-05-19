.class public abstract Lcom/wy/f1home/PopupWindow/CommonPopupWindow;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;
    }
.end annotation


# instance fields
.field protected contentView:Landroid/view/View;

.field protected context:Landroid/content/Context;

.field protected mInstance:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->context:Landroid/content/Context;

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->contentView:Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->initView()V

    .line 20
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->initEvent()V

    .line 22
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->contentView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    .line 24
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->initWindow()V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method protected abstract initEvent()V
.end method

.method protected abstract initView()V
.end method

.method protected initWindow()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 35
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showBashOfAnchor(Landroid/view/View;Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;II)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p1, v0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->getOffset(Landroid/view/View;Landroid/widget/PopupWindow;)[I

    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->mInstance:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    aget v1, p2, v1

    add-int/2addr v1, p3

    const/4 p3, 0x1

    aget p2, p2, p3

    add-int/2addr p2, p4

    invoke-virtual {v0, p1, v1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
