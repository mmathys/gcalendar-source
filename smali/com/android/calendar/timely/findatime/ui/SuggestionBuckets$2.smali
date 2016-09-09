.class final Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$2;
.super Ljava/lang/Object;
.source "SuggestionBuckets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p1, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->suggestions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-wide v0, v0, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 46
    iget-object v0, p2, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;->suggestions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-wide v2, v0, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    check-cast p2, Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$2;->compare(Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;Lcom/android/calendar/timely/findatime/ui/SuggestionBucket;)I

    move-result v0

    return v0
.end method
