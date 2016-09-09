.class Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;
.super Ljava/lang/Object;
.source "ICalProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnsMapHolder"
.end annotation


# static fields
.field private static final COLUMNS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/ical/ICalProvider$Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    .line 111
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "method"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$1;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "dtstamp"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$2;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "id"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$3;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "sequence"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$4;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "title"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$5;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$6;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "dtstart"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$7;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "dtend"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$8;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "allDay"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$9;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$10;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "rrule"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$11;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "organizer"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$12;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$13;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "eventUid"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$14;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$14;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$15;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$15;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$16;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$16;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$17;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$17;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    new-instance v2, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$18;

    invoke-direct {v2}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder$18;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;

    return-object v0
.end method
