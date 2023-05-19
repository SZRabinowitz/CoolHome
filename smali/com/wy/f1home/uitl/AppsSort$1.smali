.class final Lcom/wy/f1home/uitl/AppsSort$1;
.super Ljava/lang/Object;
.source "AppsSort.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/AppsSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/wy/f1home/uitl/Bean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/wy/f1home/uitl/Bean;Lcom/wy/f1home/uitl/Bean;)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 16
    iget p1, p1, Lcom/wy/f1home/uitl/Bean;->position:I

    iget p2, p2, Lcom/wy/f1home/uitl/Bean;->position:I

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Comparator AppItemInfo should not be null!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/wy/f1home/uitl/Bean;

    check-cast p2, Lcom/wy/f1home/uitl/Bean;

    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/uitl/AppsSort$1;->compare(Lcom/wy/f1home/uitl/Bean;Lcom/wy/f1home/uitl/Bean;)I

    move-result p1

    return p1
.end method
