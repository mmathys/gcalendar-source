.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ValueFactory;
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
    name = "ValueFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$ValueFactory;-><init>()V

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
    .line 477
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/Value;-><init>(Ljava/lang/String;)V

    .line 478
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 520
    :cond_0
    :goto_0
    return-object v0

    .line 481
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->BOOLEAN:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BOOLEAN:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 484
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->CAL_ADDRESS:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 485
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->CAL_ADDRESS:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 487
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 490
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 491
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 493
    :cond_5
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 494
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 496
    :cond_6
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->FLOAT:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 497
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->FLOAT:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 499
    :cond_7
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->INTEGER:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 500
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->INTEGER:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 502
    :cond_8
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 503
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 505
    :cond_9
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->RECUR:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 506
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->RECUR:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 508
    :cond_a
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 509
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 511
    :cond_b
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 512
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0

    .line 514
    :cond_c
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->URI:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 515
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->URI:Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0

    .line 517
    :cond_d
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->UTC_OFFSET:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->UTC_OFFSET:Lnet/fortuna/ical4j/model/parameter/Value;

    goto/16 :goto_0
.end method
