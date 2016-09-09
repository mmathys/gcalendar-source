.class public final Lnet/fortuna/ical4j/model/ComponentFactory;
.super Ljava/lang/Object;
.source "ComponentFactory.java"


# static fields
.field private static instance:Lnet/fortuna/ical4j/model/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lnet/fortuna/ical4j/model/ComponentFactory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ComponentFactory;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/model/ComponentFactory;->instance:Lnet/fortuna/ical4j/model/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/model/ComponentFactory;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lnet/fortuna/ical4j/model/ComponentFactory;->instance:Lnet/fortuna/ical4j/model/ComponentFactory;

    return-object v0
.end method

.method private isExperimentalName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 167
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "X-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected allowIllegalNames()Z
    .locals 1

    .prologue
    .line 175
    const-string v0, "ical4j.parsing.relaxed"

    .line 176
    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 175
    return v0
.end method

.method public createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;
    .locals 3

    .prologue
    .line 88
    .line 89
    const-string v0, "VALARM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VAlarm;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 132
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string v0, "VEVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VEvent;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "VFREEBUSY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    new-instance v0, Lnet/fortuna/ical4j/model/component/VFreeBusy;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VFreeBusy;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 98
    :cond_2
    const-string v0, "VJOURNAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Lnet/fortuna/ical4j/model/component/VJournal;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VJournal;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "VTODO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    new-instance v0, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VToDo;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "STANDARD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    new-instance v0, Lnet/fortuna/ical4j/model/component/Standard;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/Standard;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 107
    :cond_5
    const-string v0, "DAYLIGHT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    new-instance v0, Lnet/fortuna/ical4j/model/component/Daylight;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/Daylight;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 110
    :cond_6
    const-string v0, "VTIMEZONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    new-instance v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VTimeZone;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 113
    :cond_7
    const-string v0, "VVENUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    new-instance v0, Lnet/fortuna/ical4j/model/component/VVenue;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VVenue;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 116
    :cond_8
    const-string v0, "VAVAILABILITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 117
    new-instance v0, Lnet/fortuna/ical4j/model/component/VAvailability;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/VAvailability;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 119
    :cond_9
    const-string v0, "AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 120
    new-instance v0, Lnet/fortuna/ical4j/model/component/Available;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/component/Available;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    goto/16 :goto_0

    .line 122
    :cond_a
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/ComponentFactory;->isExperimentalName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 123
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto/16 :goto_0

    .line 125
    :cond_b
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ComponentFactory;->allowIllegalNames()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 126
    new-instance v0, Lnet/fortuna/ical4j/model/component/XComponent;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/component/XComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto/16 :goto_0

    .line 129
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal component ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
