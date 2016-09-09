.class public final Lcom/google/api/services/calendar/model/CalendarListEntry;
.super Lcom/google/api/client/json/GenericJson;
.source "CalendarListEntry.java"


# instance fields
.field private accessRole:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private backgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private colorId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private defaultAllDayReminders:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field private defaultReminders:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field private hidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private primary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private selected:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summaryOverride:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->clone()Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->clone()Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 1

    .prologue
    .line 674
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarListEntry;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->clone()Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public getAccessRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->accessRole:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getColorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->colorId:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceProperties()Lcom/google/api/services/calendar/model/ConferenceProperties;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;

    return-object v0
.end method

.method public getDefaultAllDayReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->defaultAllDayReminders:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->defaultReminders:Ljava/util/List;

    return-object v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->selected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->summaryOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->primary:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->primary:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 567
    :cond_0
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 1

    .prologue
    .line 669
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarListEntry;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->backgroundColor:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public setColorId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->colorId:Ljava/lang/String;

    .line 255
    return-object p0
.end method

.method public setDefaultAllDayReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;)",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;"
        }
    .end annotation

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->defaultAllDayReminders:Ljava/util/List;

    .line 289
    return-object p0
.end method

.method public setDefaultReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;)",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;"
        }
    .end annotation

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->defaultReminders:Ljava/util/List;

    .line 306
    return-object p0
.end method

.method public setHidden(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->hidden:Ljava/lang/Boolean;

    .line 427
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->id:Ljava/lang/String;

    .line 471
    return-object p0
.end method

.method public setSelected(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->selected:Ljava/lang/Boolean;

    .line 586
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->timeZone:Ljava/lang/String;

    .line 664
    return-object p0
.end method
