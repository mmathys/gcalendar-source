.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;
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
    name = "PartStatFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;-><init>()V

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
    .line 297
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 298
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 301
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 304
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 307
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 310
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 313
    :cond_5
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 314
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 316
    :cond_6
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0
.end method
