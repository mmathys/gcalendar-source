.class final Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$1;
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
        "Lcom/android/calendar/timely/TimelineSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/TimelineSuggestion;Lcom/android/calendar/timely/TimelineSuggestion;)I
    .locals 4

    .prologue
    .line 34
    iget-wide v0, p1, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/calendar/timely/TimelineSuggestion;->startMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/android/calendar/timely/TimelineSuggestion;

    check-cast p2, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets$1;->compare(Lcom/android/calendar/timely/TimelineSuggestion;Lcom/android/calendar/timely/TimelineSuggestion;)I

    move-result v0

    return v0
.end method
