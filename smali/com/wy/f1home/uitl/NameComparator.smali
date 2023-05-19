.class public Lcom/wy/f1home/uitl/NameComparator;
.super Ljava/lang/Object;
.source "NameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/wy/f1home/uitl/Bean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/uitl/NameComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/wy/f1home/uitl/Bean;Lcom/wy/f1home/uitl/Bean;)I
    .locals 4

    .line 14
    iget-object v0, p1, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    :goto_0
    iget-object v0, p2, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/wy/f1home/uitl/Bean;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 19
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 20
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v1

    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    return v1

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/wy/f1home/uitl/NameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/wy/f1home/uitl/Bean;

    check-cast p2, Lcom/wy/f1home/uitl/Bean;

    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/uitl/NameComparator;->compare(Lcom/wy/f1home/uitl/Bean;Lcom/wy/f1home/uitl/Bean;)I

    move-result p1

    return p1
.end method
