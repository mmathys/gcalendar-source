.class Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$OldEtagFormat;
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
    name = "OldEtagFormat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$OldEtagFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public classify(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;)Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;
    .locals 7
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

    const/4 v1, 0x0

    .line 165
    new-instance v3, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;-><init>(Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$1;)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "ETAG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p3}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 172
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x3

    .line 171
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, v3, Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;->mBelongsToClass:Z

    .line 174
    :cond_1
    return-object v3

    :cond_2
    move v0, v1

    .line 171
    goto :goto_0
.end method
