.class public Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/PopupWindow/CommonPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutGravity"
.end annotation


# static fields
.field public static final ALIGN_ABOVE:I = 0x2

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x4

.field public static final CENTER_HORI:I = 0x100

.field public static final CENTER_VERT:I = 0x200

.field public static final TO_ABOVE:I = 0x20

.field public static final TO_BOTTOM:I = 0x80

.field public static final TO_LEFT:I = 0x10

.field public static final TO_RIGHT:I = 0x40


# instance fields
.field private layoutGravity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    return-void
.end method


# virtual methods
.method public getHoriParam()I
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->isParamFit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getLayoutGravity()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    return v0
.end method

.method public getOffset(Landroid/view/View;Landroid/widget/PopupWindow;)[I
    .locals 7

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 103
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    .line 104
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    .line 105
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    if-gtz v1, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_0
    if-gtz v2, :cond_1

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->getHoriParam()I

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p2, v3, :cond_5

    const/4 v6, 0x4

    if-eq p2, v6, :cond_4

    const/16 v6, 0x10

    if-eq p2, v6, :cond_3

    const/16 v6, 0x40

    if-eq p2, v6, :cond_6

    const/16 v6, 0x100

    if-eq p2, v6, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    .line 124
    div-int/2addr v0, v4

    goto :goto_0

    :cond_3
    neg-int v0, v1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_5
    move v0, v5

    .line 127
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->getVertParam()I

    move-result p2

    if-eq p2, v4, :cond_b

    const/16 v1, 0x8

    if-eq p2, v1, :cond_a

    const/16 v1, 0x20

    if-eq p2, v1, :cond_9

    const/16 v1, 0x80

    if-eq p2, v1, :cond_8

    const/16 v1, 0x200

    if-eq p2, v1, :cond_7

    move p1, v5

    goto :goto_1

    :cond_7
    neg-int p2, v2

    sub-int/2addr p2, p1

    .line 137
    div-int/lit8 p1, p2, 0x2

    goto :goto_1

    :cond_8
    move p1, v5

    goto :goto_1

    :cond_9
    neg-int p1, p1

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_a
    neg-int p1, v2

    goto :goto_1

    :cond_b
    neg-int p1, p1

    .line 140
    :goto_1
    new-array p2, v4, [I

    aput v0, p2, v5

    aput p1, p2, v3

    return-object p2
.end method

.method public getVertParam()I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->isParamFit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    return v0
.end method

.method public isParamFit(I)Z
    .locals 1

    .line 82
    iget v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setHoriGravity(I)V
    .locals 1

    .line 73
    iget v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    and-int/lit16 v0, v0, 0x2aa

    iput v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    .line 74
    iget v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    return-void
.end method

.method public setLayoutGravity(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    return-void
.end method

.method public setVertGravity(I)V
    .locals 1

    .line 77
    iget v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    and-int/lit16 v0, v0, 0x155

    iput v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    .line 78
    iget v0, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/wy/f1home/PopupWindow/CommonPopupWindow$LayoutGravity;->layoutGravity:I

    return-void
.end method
