.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RsvpFactory;
.super Ljava/lang/Object;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RsvpFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RsvpFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/Rsvp;-><init>(Ljava/lang/String;)V

    .line 402
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Rsvp;->TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Rsvp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->TRUE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 405
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Rsvp;->FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Rsvp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Rsvp;->FALSE:Lnet/fortuna/ical4j/model/parameter/Rsvp;

    goto :goto_0
.end method
