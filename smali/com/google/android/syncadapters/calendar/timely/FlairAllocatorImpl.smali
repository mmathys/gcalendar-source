.class public Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;
.super Ljava/lang/Object;
.source "FlairAllocatorImpl.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/FlairAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;,
        Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;
    }
.end annotation


# instance fields
.field private final triggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;",
            ">;"
        }
    .end annotation
.end field

.field private final wordSplitter:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;",
            ">;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1, p2}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->convert(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;-><init>(Ljava/util/Map;Lcom/google/common/base/Function;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;",
            ">;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->triggers:Ljava/util/Map;

    .line 55
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->wordSplitter:Lcom/google/common/base/Function;

    .line 56
    return-void
.end method

.method private static convert(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;",
            ">;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 78
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    .line 80
    iget-object v6, v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    .line 81
    if-eqz v6, :cond_0

    array-length v1, v6

    if-eqz v1, :cond_0

    .line 84
    array-length v7, v6

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_0

    aget-object v8, v6, v3

    .line 85
    new-instance v9, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;

    iget-object v1, v8, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->word:Ljava/lang/String;

    .line 86
    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;-><init>([Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;

    iget v8, v8, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->score:I

    iget-object v10, v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->key:Ljava/lang/String;

    invoke-direct {v1, v8, v10}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;-><init>(ILjava/lang/String;)V

    .line 85
    invoke-interface {v4, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 76
    goto :goto_0

    .line 90
    :cond_2
    return-object v4
.end method

.method private generateTitlePermutations(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->wordSplitter:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v1, "["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    array-length v1, v0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 170
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 173
    aget-object v1, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;

    invoke-direct {v1, v4}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 176
    add-int/lit8 v1, v2, 0x5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 177
    add-int/lit8 v1, v2, 0x1

    :goto_1
    if-ge v1, v6, :cond_0

    .line 179
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v7, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;

    invoke-direct {v7, v4}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 184
    :cond_1
    return-object v3
.end method

.method private static isBetterMatch(Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 136
    if-nez p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    iget v2, p1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->score:I

    iget v3, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->score:I

    if-gt v2, v3, :cond_0

    .line 142
    iget v2, p1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->score:I

    iget v3, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->score:I

    if-ne v2, v3, :cond_2

    .line 143
    iget-object v2, p1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 145
    goto :goto_0
.end method


# virtual methods
.method public allocateFlair(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v2

    .line 110
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->generateTitlePermutations(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$TriggerKey;

    .line 114
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->triggers:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->triggers:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;

    .line 116
    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl;->isBetterMatch(Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move-object v1, v0

    .line 120
    goto :goto_1

    .line 122
    :cond_2
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, v1, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorImpl$FlairPair;->key:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
