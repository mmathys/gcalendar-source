.class public Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;
.super Ljava/lang/Object;
.source "PeriodOverlapPredicate.java"


# instance fields
.field private final presetEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final presetStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;->presetStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 20
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;->presetEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 25
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;->presetStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v2, p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;->presetEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 29
    invoke-interface {v2, p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v2

    if-lez v2, :cond_2

    .line 32
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 29
    goto :goto_0

    .line 32
    :cond_3
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;->presetStartTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v2, p2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/time/PeriodOverlapPredicate;->presetEndTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 34
    invoke-interface {v2, p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
