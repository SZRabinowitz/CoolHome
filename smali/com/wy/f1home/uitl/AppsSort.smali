.class public final Lcom/wy/f1home/uitl/AppsSort;
.super Ljava/lang/Object;
.source "AppsSort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/uitl/AppsSort$SortType;
    }
.end annotation


# static fields
.field private static final NAME_METHODS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_METHODS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppsSort"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/wy/f1home/uitl/AppsSort$1;

    invoke-direct {v0}, Lcom/wy/f1home/uitl/AppsSort$1;-><init>()V

    sput-object v0, Lcom/wy/f1home/uitl/AppsSort;->POSITION_METHODS:Ljava/util/Comparator;

    .line 20
    new-instance v0, Lcom/wy/f1home/uitl/NameComparator;

    invoke-direct {v0}, Lcom/wy/f1home/uitl/NameComparator;-><init>()V

    sput-object v0, Lcom/wy/f1home/uitl/AppsSort;->NAME_METHODS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sort(Ljava/util/ArrayList;Lcom/wy/f1home/uitl/AppsSort$SortType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;",
            "Lcom/wy/f1home/uitl/AppsSort$SortType;",
            ")V"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/wy/f1home/uitl/AppsSort$2;->$SwitchMap$com$wy$f1home$uitl$AppsSort$SortType:[I

    invoke-virtual {p1}, Lcom/wy/f1home/uitl/AppsSort$SortType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    sget-object p1, Lcom/wy/f1home/uitl/AppsSort;->POSITION_METHODS:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object p1, Lcom/wy/f1home/uitl/AppsSort;->NAME_METHODS:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static verifyPosition(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wy/f1home/uitl/Bean;

    .line 40
    iget v5, v3, Lcom/wy/f1home/uitl/Bean;->position:I

    if-lt v5, v4, :cond_0

    iget v4, v3, Lcom/wy/f1home/uitl/Bean;->position:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    sget-object v2, Lcom/wy/f1home/uitl/AppsSort$SortType;->POSITION:Lcom/wy/f1home/uitl/AppsSort$SortType;

    invoke-static {v0, v2}, Lcom/wy/f1home/uitl/AppsSort;->sort(Ljava/util/ArrayList;Lcom/wy/f1home/uitl/AppsSort$SortType;)V

    const/4 v2, 0x0

    .line 48
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wy/f1home/uitl/Bean;

    .line 50
    iget v5, v3, Lcom/wy/f1home/uitl/Bean;->position:I

    sub-int/2addr v5, v4

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 52
    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 58
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
