.class Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;
.super Ljava/lang/Object;
.source "VToDo.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/component/VToDo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterValidator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lnet/fortuna/ical4j/model/component/VToDo;


# direct methods
.method private constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/component/VToDo;Lnet/fortuna/ical4j/model/component/VToDo$1;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;-><init>(Lnet/fortuna/ical4j/model/component/VToDo;)V

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
    .line 601
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ATTENDEE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrMore(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 603
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTAMP"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 604
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ORGANIZER"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 605
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PRIORITY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 606
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SUMMARY"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 607
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "UID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 609
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CATEGORIES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 610
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CLASS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 611
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "CREATED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 612
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DESCRIPTION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 613
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DTSTART"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 614
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DUE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 615
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 616
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "GEO"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 617
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LAST-MODIFIED"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 618
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "LOCATION"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 619
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "PERCENT-COMPLETE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 620
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RECURRENCE-ID"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 621
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RESOURCES"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 622
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "RRULE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 623
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "SEQUENCE"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 624
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "STATUS"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 625
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "URL"

    iget-object v2, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/component/VToDo;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 627
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VToDo$CounterValidator;->this$0:Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAlarm;

    .line 629
    sget-object v2, Lnet/fortuna/ical4j/model/property/Method;->COUNTER:Lnet/fortuna/ical4j/model/property/Method;

    invoke-virtual {v0, v2}, Lnet/fortuna/ical4j/model/component/VAlarm;->validate(Lnet/fortuna/ical4j/model/property/Method;)V

    goto :goto_0

    .line 631
    :cond_0
    return-void
.end method
