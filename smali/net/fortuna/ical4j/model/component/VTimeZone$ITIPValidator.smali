.class Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;
.super Ljava/lang/Object;
.source "VTimeZone.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ITIPValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VTimeZone;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VTimeZone;Lnet/fortuna/ical4j/model/component/VTimeZone$1;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VTimeZone$ITIPValidator;->this$0:Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/Observance;

    .line 287
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "DTSTART"

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 288
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "TZOFFSETFROM"

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 289
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "TZOFFSETTO"

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 291
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v2

    const-string v3, "TZNAME"

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/Observance;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method
