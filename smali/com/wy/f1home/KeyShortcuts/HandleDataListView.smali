.class public Lcom/wy/f1home/KeyShortcuts/HandleDataListView;
.super Landroid/widget/ListView;
.source "HandleDataListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;
    }
.end annotation


# static fields
.field static mDataChangedListener:Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static setDataChangedListener(Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;)V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "setDataChangedListener"

    .line 38
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sput-object p0, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;->mDataChangedListener:Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;

    return-void
.end method


# virtual methods
.method protected handleDataChanged()V
    .locals 2

    const-string v0, "wuyu"

    const-string v1, "handleDataChanged"

    .line 32
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 34
    sget-object v0, Lcom/wy/f1home/KeyShortcuts/HandleDataListView;->mDataChangedListener:Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;

    invoke-interface {v0}, Lcom/wy/f1home/KeyShortcuts/HandleDataListView$DataChangedListener;->onSuccess()V

    return-void
.end method
