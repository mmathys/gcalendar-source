.class Lcom/google/android/calendar/ical/ICalProvider$1;
.super Ljava/lang/Object;
.source "ICalProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalProvider;->populateEventsCursor(Landroid/database/MatrixCursor;Lnet/fortuna/ical4j/model/Calendar;I[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
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
        "Lnet/fortuna/ical4j/model/component/VEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalProvider;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalProvider;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalProvider$1;->this$0:Lcom/google/android/calendar/ical/ICalProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 399
    check-cast p1, Lnet/fortuna/ical4j/model/component/VEvent;

    check-cast p2, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalProvider$1;->compare(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent;)I
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 402
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v2

    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J
    invoke-static {v2}, Lcom/google/android/calendar/ical/ICalProvider;->access$500(Lnet/fortuna/ical4j/model/property/DateProperty;)J

    move-result-wide v2

    .line 403
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v4

    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J
    invoke-static {v4}, Lcom/google/android/calendar/ical/ICalProvider;->access$500(Lnet/fortuna/ical4j/model/property/DateProperty;)J

    move-result-wide v4

    .line 404
    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 408
    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {p1, v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getEndDate(Z)Lnet/fortuna/ical4j/model/property/DtEnd;

    move-result-object v2

    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J
    invoke-static {v2}, Lcom/google/android/calendar/ical/ICalProvider;->access$500(Lnet/fortuna/ical4j/model/property/DateProperty;)J

    move-result-wide v2

    .line 411
    invoke-virtual {p2, v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getEndDate(Z)Lnet/fortuna/ical4j/model/property/DtEnd;

    move-result-object v4

    # invokes: Lcom/google/android/calendar/ical/ICalProvider;->getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J
    invoke-static {v4}, Lcom/google/android/calendar/ical/ICalProvider;->access$500(Lnet/fortuna/ical4j/model/property/DateProperty;)J

    move-result-wide v4

    .line 412
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 415
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 416
    goto :goto_0

    .line 418
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
