.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleStatusFactory;
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
    name = "ScheduleStatusFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ScheduleStatusFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/ScheduleStatus;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/ScheduleStatus;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
