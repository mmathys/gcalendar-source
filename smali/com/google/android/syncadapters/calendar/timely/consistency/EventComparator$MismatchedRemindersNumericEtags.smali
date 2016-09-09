.class Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$MismatchedRemindersNumericEtags;
.super Ljava/lang/Object;
.source "EventComparator.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$InconsistencyClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MismatchedRemindersNumericEtags"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$MismatchedRemindersNumericEtags;-><init>()V

    return-void
.end method


# virtual methods
.method public classify(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;)Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")",
            "Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 184
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;-><init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "ETAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p3}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 189
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 190
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 191
    invoke-virtual {p3}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    .line 192
    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x7d0

    mul-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mBelongsToClass:Z

    .line 195
    # invokes: Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->wasRecentlyUpdated(Lcom/google/api/services/calendar/model/Event;)Z
    invoke-static {p3}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;->access$500(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mShouldReport:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method
