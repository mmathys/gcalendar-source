.class public Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;
.super Ljava/lang/Object;
.source "SuggestionBuckets.java"


# static fields
.field private static final BUCKET_STARTTIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_SUGGESTION_BUCKET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUGGESTION_STARTTIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBestTimeLabel:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->EMPTY_SUGGESTION_BUCKET:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->SUGGESTION_STARTTIME_COMPARATOR:Ljava/util/Comparator;

    .line 41
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$2;

    invoke-direct {v0}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$2;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->BUCKET_STARTTIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->mBestTimeLabel:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getBestBucket(Ljava/util/List;I)Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I)",
            "Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->mBestTimeLabel:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method

.method private getBestTimesCount(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 249
    if-lez p2, :cond_0

    .line 250
    const/4 v0, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 249
    :cond_0
    return p2
.end method

.method private getNonBestDailyBuckets(Ljava/util/List;ILjava/util/TimeZone;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I",
            "Ljava/util/TimeZone;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Best times size must not exceed suggestion size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->EMPTY_SUGGESTION_BUCKET:Ljava/util/List;

    .line 150
    :goto_0
    return-object v0

    .line 132
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v5, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 135
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 137
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-wide v0, v0, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {v0, v1, v2, v6, v7}, Lcom/android/calendar/Utils;->getDisplayedSingleDate(JLjava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v5, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    invoke-virtual {v5, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 145
    :goto_2
    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 146
    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->SUGGESTION_STARTTIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    new-instance v6, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v0, v1, v3}, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move-object v0, v4

    .line 150
    goto :goto_0
.end method


# virtual methods
.method getAllBuckets(Ljava/util/List;ILjava/util/TimeZone;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I",
            "Ljava/util/TimeZone;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->EMPTY_SUGGESTION_BUCKET:Ljava/util/List;

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    if-ltz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 92
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Best times size must be between 0 and suggestion size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->EMPTY_SUGGESTION_BUCKET:Ljava/util/List;

    goto :goto_0

    .line 97
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getNonBestDailyBuckets(Ljava/util/List;ILjava/util/TimeZone;)Ljava/util/List;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->BUCKET_STARTTIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    if-lez p2, :cond_0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getBestBucket(Ljava/util/List;I)Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getFlatList(Ljava/util/List;ILjava/util/TimeZone;Ljava/util/List;)Lcom/android/calendar/timely/SuggestionRows;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I",
            "Ljava/util/TimeZone;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)",
            "Lcom/android/calendar/timely/SuggestionRows;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Lcom/android/calendar/timely/SuggestionRow;

    invoke-direct {v1, p4}, Lcom/android/calendar/timely/SuggestionRow;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    if-nez p2, :cond_1

    .line 241
    new-instance v1, Lcom/android/calendar/timely/SuggestionRow;

    invoke-direct {v1}, Lcom/android/calendar/timely/SuggestionRow;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getFlatSuggestionRows(Ljava/util/List;ILjava/util/TimeZone;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    new-instance v1, Lcom/android/calendar/timely/SuggestionRows;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getBestTimesCount(Ljava/util/List;I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/calendar/timely/SuggestionRows;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public getFlatSuggestionRows(Ljava/util/List;ILjava/util/TimeZone;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I",
            "Ljava/util/TimeZone;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/SuggestionRow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getBestTimesCount(Ljava/util/List;I)I

    move-result v0

    .line 216
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getAllBuckets(Ljava/util/List;ILjava/util/TimeZone;)Ljava/util/List;

    move-result-object v5

    .line 217
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 218
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 219
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    .line 220
    new-instance v1, Lcom/android/calendar/timely/SuggestionRow;

    iget-object v4, v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->displayLabel:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/android/calendar/timely/SuggestionRow;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    .line 221
    :goto_1
    iget-object v1, v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->suggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 222
    new-instance v7, Lcom/android/calendar/timely/SuggestionRow;

    iget-object v1, v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->suggestions:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-boolean v8, v0, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->isBestBucket:Z

    invoke-direct {v7, v1, v8, v2}, Lcom/android/calendar/timely/SuggestionRow;-><init>(Lcom/android/calendar/timely/TimelineSuggestion;ZI)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 218
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 225
    :cond_1
    return-object v6
.end method
