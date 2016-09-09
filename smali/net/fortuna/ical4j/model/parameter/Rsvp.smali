.class public Lnet/fortuna/ical4j/model/parameter/Rsvp;
.super Lnet/fortuna/ical4j/model/Parameter;
.source "Rsvp.java"


# static fields
.field public static final FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

.field public static final TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

.field private static final serialVersionUID:J = -0x4aaf79b17cdc51dcL


# instance fields
.field private rsvp:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;

    const-string v1, "TRUE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 59
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;

    const-string v1, "FALSE"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 74
    const-string v0, "RSVP"

    invoke-static {}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/ParameterFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Parameter;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterFactory;)V

    .line 75
    iput-object p1, p0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->rsvp:Ljava/lang/Boolean;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/Boolean;)V

    .line 68
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->rsvp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "TRUE"

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
