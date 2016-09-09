.class interface abstract Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$InconsistencyClass;
.super Ljava/lang/Object;
.source "EventComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InconsistencyClass"
.end annotation


# virtual methods
.method public abstract classify(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Lcom/google/api/services/calendar/model/Event;)Lcom/google/android/syncadapters/calendar/timely/consistency/EventComparator$ClassificationResult;
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
.end method
