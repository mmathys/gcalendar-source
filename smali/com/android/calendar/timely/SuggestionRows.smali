.class public Lcom/android/calendar/timely/SuggestionRows;
.super Ljava/lang/Object;
.source "SuggestionRows.java"


# instance fields
.field public final bestTimesCount:I

.field private mTimelineSuggestions:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final suggestions:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/SuggestionRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/SuggestionRow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 23
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    .line 24
    iput p2, p0, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    .line 25
    invoke-direct {p0}, Lcom/android/calendar/timely/SuggestionRows;->createTimelineSuggestionList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SuggestionRows;->mTimelineSuggestions:Lcom/google/common/collect/ImmutableList;

    .line 26
    return-void

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private createTimelineSuggestionList()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 74
    iget v3, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    if-nez v3, :cond_0

    .line 75
    iget-object v0, v0, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Lcom/android/calendar/timely/SuggestionRows;

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    check-cast p1, Lcom/android/calendar/timely/SuggestionRows;

    .line 96
    iget-object v1, p0, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    iget v2, p1, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBestBucketSize()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTimelineSuggestionList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/SuggestionRows;->mTimelineSuggestions:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hasBestTimes()Z
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNoBestSuggestions()Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 61
    iget v0, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotConsidered()Z
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 42
    iget v0, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/calendar/Utils;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
