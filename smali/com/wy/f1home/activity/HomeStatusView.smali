.class public Lcom/wy/f1home/activity/HomeStatusView;
.super Landroid/widget/LinearLayout;
.source "HomeStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/activity/HomeStatusView$Patterns;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeStatusView"


# instance fields
.field private mClockView:Landroid/widget/TextClock;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextClock;

.field private mLunarView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 44
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mContext:Landroid/content/Context;

    const v0, 0x7f090060

    .line 45
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    const v0, 0x7f090061

    .line 46
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    .line 47
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeStatusView;->refreshTime()V

    return-void
.end method

.method public refreshTime()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wy/f1home/activity/HomeStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/wy/f1home/activity/HomeStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/wy/f1home/activity/HomeStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    .line 57
    invoke-virtual {p0}, Lcom/wy/f1home/activity/HomeStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lcom/wy/f1home/activity/HomeStatusView$Patterns;->clockView12:Ljava/lang/String;

    .line 56
    invoke-virtual {p0, v1, v2}, Lcom/wy/f1home/activity/HomeStatusView;->updateAmPmTextSize(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/wy/f1home/activity/HomeStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateAmPmTextSize(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    if-gtz p1, :cond_0

    const-string v0, "a"

    const-string v1, ""

    .line 64
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    :cond_0
    const-string v0, " "

    const-string v1, "\u200a"

    .line 67
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x61

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p2

    .line 73
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 74
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x21

    invoke-interface {v1, p2, v0, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 76
    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p2, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v1, p2, v0, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 78
    new-instance p1, Landroid/text/style/TypefaceSpan;

    const-string p2, "sans-serif-condensed"

    invoke-direct {p1, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v0, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method
