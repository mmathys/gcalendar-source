.class public Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.super Lnet/fortuna/ical4j/model/AbstractContentFactory;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ValueFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TzIdFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TypeFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$VvenueFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$SentByFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleStatusFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleAgentFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RsvpFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RoleFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelatedFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RangeFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$MemberFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$LanguageFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FmtTypeFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$EncodingFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DirFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DelegatedToFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DelegatedFromFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CnFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$AltRepFactory;,
        Lnet/fortuna/ical4j/model/ParameterFactoryImpl$AbbrevFactory;
    }
.end annotation


# static fields
.field private static instance:Lnet/fortuna/ical4j/model/ParameterFactoryImpl; = null

.field private static final serialVersionUID:J = -0x37fd26ce01fc174dL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;-><init>()V

    sput-object v0, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->instance:Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/AbstractContentFactory;-><init>()V

    .line 80
    const-string v0, "ABBREV"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$AbbrevFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$AbbrevFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v0, "ALTREP"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$AltRepFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$AltRepFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v0, "CN"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CnFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CnFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v0, "CUTYPE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v0, "DELEGATED-FROM"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DelegatedFromFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DelegatedFromFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "DELEGATED-TO"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DelegatedToFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DelegatedToFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "DIR"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DirFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$DirFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v0, "ENCODING"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$EncodingFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$EncodingFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "FMTTYPE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FmtTypeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FmtTypeFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "FBTYPE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v0, "LANGUAGE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$LanguageFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$LanguageFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "MEMBER"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$MemberFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$MemberFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v0, "PARTSTAT"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "RANGE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RangeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RangeFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "RELATED"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelatedFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelatedFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "RELTYPE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v0, "ROLE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RoleFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RoleFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v0, "RSVP"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RsvpFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RsvpFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v0, "SCHEDULE-AGENT"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleAgentFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleAgentFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "SCHEDULE-STATUS"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleStatusFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleStatusFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v0, "SENT-BY"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$SentByFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$SentByFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "TYPE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TypeFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TypeFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v0, "TZID"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TzIdFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$TzIdFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "VALUE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ValueFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ValueFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "VVENUE"

    new-instance v1, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$VvenueFactory;

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$VvenueFactory;-><init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V

    invoke-virtual {p0, v0, v1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->registerDefaultFactory(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public static getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->instance:Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    return-object v0
.end method

.method private isExperimentalName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 147
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "X-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getFactory(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1, p2}, Lnet/fortuna/ical4j/model/ParameterFactory;->createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->isExperimentalName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/XParameter;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/parameter/XParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->allowIllegalNames()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/XParameter;

    invoke-direct {v0, p1, p2}, Lnet/fortuna/ical4j/model/parameter/XParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid parameter name: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
