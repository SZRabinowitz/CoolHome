.class public Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyShortcutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;
    }
.end annotation


# static fields
.field private static mCallBack:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;

.field private static mHighLightPos:I


# instance fields
.field private context:Landroid/content/Context;

.field private listText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mHighLightTitle:Ljava/lang/String;

.field states:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/wy/f1home/uitl/Bean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->states:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->listText:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->mHighLightTitle:Ljava/lang/String;

    return-void
.end method

.method public static setHighlightPosCallBack(Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->mCallBack:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->listText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHighLightPos()I
    .locals 1

    .line 54
    sget v0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->mHighLightPos:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->listText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->context:Landroid/content/Context;

    const p3, 0x7f0c0035

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0900f0

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f09009e

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 80
    iget-object v1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->listText:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wy/f1home/uitl/Bean;

    iget v2, v2, Lcom/wy/f1home/uitl/Bean;->mTitleId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p3, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->mHighLightTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->listText:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wy/f1home/uitl/Bean;

    iget-object v1, v1, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    .line 85
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    sput p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->mHighLightPos:I

    .line 87
    sget-object p3, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->mCallBack:Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;

    invoke-interface {p3, p1}, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter$HighlightPosCallBack;->Receive(I)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 91
    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    :goto_0
    iget-object p3, p0, Lcom/wy/f1home/KeyShortcuts/KeyShortcutAdapter;->listText:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
