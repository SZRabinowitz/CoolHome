.class public Lcom/wy/f1home/uitl/QueryDialog;
.super Landroid/app/Dialog;
.source "QueryDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;
    }
.end annotation


# static fields
.field public static final FIRST_BUTTON:I = 0x0

.field private static final MSG_VIEW_HEIGHT_NO_TITLE:I = 0xaf

.field private static final MSG_VIEW_HEIGHT_WITH_TITLE:I = 0x91


# instance fields
.field private arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialogButtons:Landroid/widget/ListView;

.field private dialogMessage:Landroid/widget/TextView;

.field private dialogTitle:Landroid/widget/TextView;

.field private message:Ljava/lang/String;

.field private msgWrapper:Landroid/widget/ScrollView;

.field private queryDialogButtonClickListener:Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/wy/f1home/uitl/QueryDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wy/f1home/uitl/QueryDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f100208

    .line 51
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/wy/f1home/uitl/QueryDialog;->title:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/wy/f1home/uitl/QueryDialog;->message:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/wy/f1home/uitl/QueryDialog;->buttons:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/wy/f1home/uitl/QueryDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private formatButtons(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getArrayAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->arrayAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/wy/f1home/uitl/QueryDialog;->context:Landroid/content/Context;

    const v2, 0x7f0c0037

    const v3, 0x7f090081

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->arrayAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 119
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->arrayAdapter:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method private setDialogButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogButtons:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->formatButtons(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->getArrayAdapter(Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private setDialogMessage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setDialogTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, v0}, Lcom/wy/f1home/uitl/QueryDialog;->setTitleVisibility(Z)V

    .line 78
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->setTitleVisibility(Z)V

    :goto_1
    return-void
.end method

.method private setTitleVisibility(Z)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/16 p1, 0x91

    goto :goto_1

    :cond_1
    const/16 p1, 0xaf

    .line 85
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->msgWrapper:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c004d

    .line 61
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->setContentView(I)V

    const p1, 0x7f090049

    .line 62
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogTitle:Landroid/widget/TextView;

    const p1, 0x7f090088

    .line 63
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->msgWrapper:Landroid/widget/ScrollView;

    const p1, 0x7f090048

    .line 64
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogMessage:Landroid/widget/TextView;

    const p1, 0x7f090047

    .line 65
    invoke-virtual {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogButtons:Landroid/widget/ListView;

    .line 66
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->dialogButtons:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->title:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->setDialogTitle(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->setDialogMessage(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->buttons:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/wy/f1home/uitl/QueryDialog;->setDialogButtons(Ljava/util/List;)V

    return-void
.end method

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

    .line 103
    iget-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->queryDialogButtonClickListener:Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;

    invoke-interface {p1, p2, p3}, Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;->OnQueryDialogButtonClick(Landroid/view/View;I)V

    return-void
.end method

.method public setOnQueryDialogButtonClickListener(Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/wy/f1home/uitl/QueryDialog;->queryDialogButtonClickListener:Lcom/wy/f1home/uitl/QueryDialog$QueryDialogButtonClickListener;

    return-void
.end method
