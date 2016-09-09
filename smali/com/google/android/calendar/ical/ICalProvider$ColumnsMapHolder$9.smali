.class final Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$9;
.super Ljava/lang/Object;
.source "ICalProvider.java"

# interfaces
.implements Lcom/google/android/calendar/ical/ICalProvider$Attribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/property/Attendee;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lnet/fortuna/ical4j/model/component/VEvent;->getStartDate()Lnet/fortuna/ical4j/model/property/DtStart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/property/DtStart;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VALUE=DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
