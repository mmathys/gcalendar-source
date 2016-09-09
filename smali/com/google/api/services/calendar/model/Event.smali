.class public final Lcom/google/api/services/calendar/model/Event;
.super Lcom/google/api/client/json/GenericJson;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/model/Event$Source;,
        Lcom/google/api/services/calendar/model/Event$Reminders;,
        Lcom/google/api/services/calendar/model/Event$Organizer;,
        Lcom/google/api/services/calendar/model/Event$Gadget;,
        Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    }
.end annotation


# instance fields
.field private attachments:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private attendees:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;"
        }
    .end annotation
.end field

.field private attendeesOmitted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private backgroundImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private colorId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private conferenceData:Lcom/google/api/services/calendar/model/ConferenceData;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private end:Lcom/google/api/services/calendar/model/EventDateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private endTimeUnspecified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private extendedProperties:Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private gadget:Lcom/google/api/services/calendar/model/Event$Gadget;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private guestsCanInviteOthers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private guestsCanModify:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private guestsCanSeeOtherGuests:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private habitInstance:Lcom/google/api/services/calendar/model/EventHabitInstance;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hangoutLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private htmlLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private iCalUID:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private organizer:Lcom/google/api/services/calendar/model/Event$Organizer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private originalStartTime:Lcom/google/api/services/calendar/model/EventDateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private phantom:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private privateEventData:Lcom/google/api/services/calendar/model/PrivateEventData;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private recurrence:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recurringEventId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private reminders:Lcom/google/api/services/calendar/model/Event$Reminders;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sequence:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private source:Lcom/google/api/services/calendar/model/Event$Source;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private start:Lcom/google/api/services/calendar/model/EventDateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private structuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private transparency:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private updated:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private visibility:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->clone()Lcom/google/api/services/calendar/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->clone()Lcom/google/api/services/calendar/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/Event;
    .locals 1

    .prologue
    .line 1672
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->clone()Lcom/google/api/services/calendar/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->attendees:Ljava/util/List;

    return-object v0
.end method

.method public getAttendeesOmitted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->attendeesOmitted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->backgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getColorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->colorId:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->conferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->end:Lcom/google/api/services/calendar/model/EventDateTime;

    return-object v0
.end method

.method public getEndTimeUnspecified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->endTimeUnspecified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->extendedProperties:Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    return-object v0
.end method

.method public getGadget()Lcom/google/api/services/calendar/model/Event$Gadget;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->gadget:Lcom/google/api/services/calendar/model/Event$Gadget;

    return-object v0
.end method

.method public getGuestsCanInviteOthers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->guestsCanInviteOthers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGuestsCanModify()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->guestsCanModify:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGuestsCanSeeOtherGuests()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->guestsCanSeeOtherGuests:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->habitInstance:Lcom/google/api/services/calendar/model/EventHabitInstance;

    return-object v0
.end method

.method public getHangoutLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->hangoutLink:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->htmlLink:Ljava/lang/String;

    return-object v0
.end method

.method public getICalUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->iCalUID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Lcom/google/api/services/calendar/model/Event$Organizer;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->organizer:Lcom/google/api/services/calendar/model/Event$Organizer;

    return-object v0
.end method

.method public getOriginalStartTime()Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->originalStartTime:Lcom/google/api/services/calendar/model/EventDateTime;

    return-object v0
.end method

.method public getPhantom()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->phantom:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrivateEventData()Lcom/google/api/services/calendar/model/PrivateEventData;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->privateEventData:Lcom/google/api/services/calendar/model/PrivateEventData;

    return-object v0
.end method

.method public getRecurrence()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->recurrence:Ljava/util/List;

    return-object v0
.end method

.method public getRecurringEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->recurringEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->reminders:Lcom/google/api/services/calendar/model/Event$Reminders;

    return-object v0
.end method

.method public getSequence()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->sequence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSource()Lcom/google/api/services/calendar/model/Event$Source;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->source:Lcom/google/api/services/calendar/model/Event$Source;

    return-object v0
.end method

.method public getStart()Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->start:Lcom/google/api/services/calendar/model/EventDateTime;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->structuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->transparency:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->updated:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/api/services/calendar/model/Event;->visibility:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/Event;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/Event;
    .locals 1

    .prologue
    .line 1667
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Event;

    return-object v0
.end method

.method public setAttachments(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event;"
        }
    .end annotation

    .prologue
    .line 553
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->attachments:Ljava/util/List;

    .line 554
    return-object p0
.end method

.method public setAttendees(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event;"
        }
    .end annotation

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->attendees:Ljava/util/List;

    .line 573
    return-object p0
.end method

.method public setAttendeesOmitted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->attendeesOmitted:Ljava/lang/Boolean;

    .line 596
    return-object p0
.end method

.method public setColorId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->colorId:Ljava/lang/String;

    .line 665
    return-object p0
.end method

.method public setConferenceData(Lcom/google/api/services/calendar/model/ConferenceData;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->conferenceData:Lcom/google/api/services/calendar/model/ConferenceData;

    .line 682
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->description:Ljava/lang/String;

    .line 758
    return-object p0
.end method

.method public setEnd(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->end:Lcom/google/api/services/calendar/model/EventDateTime;

    .line 777
    return-object p0
.end method

.method public setEndTimeUnspecified(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->endTimeUnspecified:Ljava/lang/Boolean;

    .line 796
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->etag:Ljava/lang/String;

    .line 841
    return-object p0
.end method

.method public setExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->extendedProperties:Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    .line 858
    return-object p0
.end method

.method public setGuestsCanInviteOthers(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->guestsCanInviteOthers:Ljava/lang/Boolean;

    .line 911
    return-object p0
.end method

.method public setGuestsCanModify(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->guestsCanModify:Ljava/lang/Boolean;

    .line 958
    return-object p0
.end method

.method public setGuestsCanSeeOtherGuests(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->guestsCanSeeOtherGuests:Ljava/lang/Boolean;

    .line 1004
    return-object p0
.end method

.method public setHabitInstance(Lcom/google/api/services/calendar/model/EventHabitInstance;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->habitInstance:Lcom/google/api/services/calendar/model/EventHabitInstance;

    .line 1049
    return-object p0
.end method

.method public setICalUID(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->iCalUID:Ljava/lang/String;

    .line 1108
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->id:Ljava/lang/String;

    .line 1145
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->location:Ljava/lang/String;

    .line 1217
    return-object p0
.end method

.method public setOrganizer(Lcom/google/api/services/calendar/model/Event$Organizer;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->organizer:Lcom/google/api/services/calendar/model/Event$Organizer;

    .line 1288
    return-object p0
.end method

.method public setOriginalStartTime(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->originalStartTime:Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1309
    return-object p0
.end method

.method public setPrivateEventData(Lcom/google/api/services/calendar/model/PrivateEventData;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->privateEventData:Lcom/google/api/services/calendar/model/PrivateEventData;

    .line 1390
    return-object p0
.end method

.method public setRecurrence(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/calendar/model/Event;"
        }
    .end annotation

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->recurrence:Ljava/util/List;

    .line 1430
    return-object p0
.end method

.method public setRecurringEventId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->recurringEventId:Ljava/lang/String;

    .line 1449
    return-object p0
.end method

.method public setReminders(Lcom/google/api/services/calendar/model/Event$Reminders;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->reminders:Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 1466
    return-object p0
.end method

.method public setSequence(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->sequence:Ljava/lang/Integer;

    .line 1483
    return-object p0
.end method

.method public setStart(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->start:Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1540
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->status:Ljava/lang/String;

    .line 1561
    return-object p0
.end method

.method public setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->structuredLocation:Lcom/google/api/services/calendar/model/StructuredLocation;

    .line 1578
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->summary:Ljava/lang/String;

    .line 1595
    return-object p0
.end method

.method public setTransparency(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->transparency:Ljava/lang/String;

    .line 1616
    return-object p0
.end method

.method public setUpdated(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->updated:Lcom/google/api/client/util/DateTime;

    .line 1633
    return-object p0
.end method

.method public setVisibility(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/google/api/services/calendar/model/Event;->visibility:Ljava/lang/String;

    .line 1662
    return-object p0
.end method
