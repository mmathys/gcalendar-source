.class Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;
.super Ljava/lang/Object;
.source "VEvent.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VEvent;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VEvent;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/component/VEvent$1;)V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;-><init>(Lnet/fortuna/ical4j/model/component/VEvent;)V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 926
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 927
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 929
    const-string v0, "ical4j.validation.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ORGANIZER"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 931
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SUMMARY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 934
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 936
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RECURRENCE-ID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 937
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SEQUENCE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 938
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CATEGORIES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 939
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CLASS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 940
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CREATED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 941
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 942
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTEND"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 943
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 944
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "GEO"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 945
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 946
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LOCATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 947
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PRIORITY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 948
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RESOURCES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 949
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 950
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TRANSP"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 951
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "URL"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 953
    const-string v0, "ical4j.validation.relaxed"

    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ATTENDEE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 957
    :cond_1
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REQUEST-STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 959
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VEvent$PublishValidator;->this$0:Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 961
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->PUBLISH:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_0

    .line 963
    :cond_2
    return-void
.end method
