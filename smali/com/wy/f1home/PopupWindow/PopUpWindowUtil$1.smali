.class Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;
.super Lcom/wy/f1home/PopupWindow/CommonPopupWindow;
.source "PopUpWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;


# direct methods
.method constructor <init>(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;Landroid/content/Context;III)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$000(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$1;

    invoke-direct {v1, p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$1;-><init>(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$000(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$2;

    invoke-direct {v1, p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$2;-><init>(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected initView()V
    .locals 4

    .line 80
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    const v2, 0x7f09003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v1, v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$002(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 82
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 86
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$000(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/wy/f1home/PopupWindow/PopupDataAdapter;

    iget-object v2, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v2}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->this$0:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-static {v3}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->access$200(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/wy/f1home/PopupWindow/PopupDataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected initWindow()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->initWindow()V

    .line 127
    invoke-virtual {p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;

    invoke-direct {v1, p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1$3;-><init>(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
