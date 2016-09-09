.class public Lcom/google/api/services/calendar/Calendar$Calendars$Patch;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Calendars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Patch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field private calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Calendars;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Calendars;Ljava/lang/String;Lcom/google/api/services/calendar/model/Calendar;)V
    .locals 6

    .prologue
    .line 2987
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->this$1:Lcom/google/api/services/calendar/Calendar$Calendars;

    .line 2988
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Calendars;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "PATCH"

    const-string v3, "calendars/{calendarId}"

    const-class v5, Lcom/google/api/services/calendar/model/Calendar;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2989
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->calendarId:Ljava/lang/String;

    .line 2990
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 2967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 2967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;
    .locals 1

    .prologue
    .line 3054
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 2967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;
    .locals 1

    .prologue
    .line 2999
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 2967
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v0

    return-object v0
.end method
