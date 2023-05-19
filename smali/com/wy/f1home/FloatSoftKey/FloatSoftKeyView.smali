.class public Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;
.super Landroid/widget/RelativeLayout;
.source "FloatSoftKeyView.java"


# static fields
.field private static mFloatSoftKeyText:Landroid/widget/TextView;

.field private static mMain:Landroid/widget/RelativeLayout;

.field private static mView:Landroid/view/View;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0030

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sput-object p1, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->mView:Landroid/view/View;

    const p1, 0x7f09005c

    .line 23
    invoke-virtual {p0, p1}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->mFloatSoftKeyText:Landroid/widget/TextView;

    const p1, 0x7f09007e

    .line 24
    invoke-virtual {p0, p1}, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    sput-object p1, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->mMain:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static updateText(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/wy/f1home/FloatSoftKey/FloatSoftKeyView;->mFloatSoftKeyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
