.class Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"

# interfaces
.implements Lnet/fortuna/ical4j/data/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/data/CalendarBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentHandlerImpl"
.end annotation


# instance fields
.field private final componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

.field private final parameterFactory:Lnet/fortuna/ical4j/model/ParameterFactory;

.field private final propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

.field final synthetic this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;


# direct methods
.method public constructor <init>(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/ComponentFactory;Lnet/fortuna/ical4j/model/PropertyFactory;Lnet/fortuna/ical4j/model/ParameterFactory;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    .line 231
    iput-object p3, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 232
    iput-object p4, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->parameterFactory:Lnet/fortuna/ical4j/model/ParameterFactory;

    .line 233
    return-void
.end method

.method private parameterInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    # invokes: Lnet/fortuna/ical4j/data/CalendarBuilder;->assertProperty(Lnet/fortuna/ical4j/model/Property;)V
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V

    .line 302
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->parameterFactory:Lnet/fortuna/ical4j/model/ParameterFactory;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lnet/fortuna/ical4j/util/Strings;->escapeNewline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/fortuna/ical4j/model/ParameterFactory;->createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 317
    return-void
.end method


# virtual methods
.method public endCalendar()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public endComponent(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    # invokes: Lnet/fortuna/ical4j/data/CalendarBuilder;->assertComponent(Lnet/fortuna/ical4j/model/Component;)V
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$000(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Component;)V

    .line 242
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getObservances()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    .line 255
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iput-object v3, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    .line 265
    :goto_1
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VEvent;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VToDo;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VToDo;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VToDo;->getAlarms()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VAvailability;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VAvailability;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VAvailability;->getAvailable()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    goto :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents()Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ComponentList;->add(Lnet/fortuna/ical4j/model/Component;)Z

    .line 259
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    # getter for: Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    # getter for: Lnet/fortuna/ical4j/data/CalendarBuilder;->tzRegistry:Lnet/fortuna/ical4j/model/TimeZoneRegistry;
    invoke-static {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$100(Lnet/fortuna/ical4j/data/CalendarBuilder;)Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/model/TimeZone;

    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    check-cast v0, Lnet/fortuna/ical4j/model/component/VTimeZone;

    invoke-direct {v2, v0}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    invoke-interface {v1, v2}, Lnet/fortuna/ical4j/model/TimeZoneRegistry;->register(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 263
    :cond_5
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iput-object v3, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    goto/16 :goto_1
.end method

.method public endProperty(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    # invokes: Lnet/fortuna/ical4j/data/CalendarBuilder;->assertProperty(Lnet/fortuna/ical4j/model/Property;)V
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V

    .line 271
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {v1}, Lnet/fortuna/ical4j/util/Constants;->forProperty(Lnet/fortuna/ical4j/model/Property;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 272
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    .line 284
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 285
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Calendar;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;->add(Lnet/fortuna/ical4j/model/Property;)Z

    goto :goto_0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->parameterInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    throw v0
.end method

.method public propertyValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, v1, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    # invokes: Lnet/fortuna/ical4j/data/CalendarBuilder;->assertProperty(Lnet/fortuna/ical4j/model/Property;)V
    invoke-static {v0, v1}, Lnet/fortuna/ical4j/data/CalendarBuilder;->access$200(Lnet/fortuna/ical4j/data/CalendarBuilder;Lnet/fortuna/ical4j/model/Property;)V

    .line 327
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    instance-of v0, v0, Lnet/fortuna/ical4j/model/Escapable;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-static {p1}, Lnet/fortuna/ical4j/util/Strings;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/Property;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCalendar()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    new-instance v1, Lnet/fortuna/ical4j/model/Calendar;

    invoke-direct {v1}, Lnet/fortuna/ical4j/model/Calendar;-><init>()V

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->calendar:Lnet/fortuna/ical4j/model/Calendar;

    .line 340
    return-void
.end method

.method public startComponent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v0, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->subComponent:Lnet/fortuna/ical4j/model/Component;

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->componentFactory:Lnet/fortuna/ical4j/model/ComponentFactory;

    invoke-virtual {v1, p1}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->component:Lnet/fortuna/ical4j/model/Component;

    goto :goto_0
.end method

.method public startProperty(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->this$0:Lnet/fortuna/ical4j/data/CalendarBuilder;

    iget-object v1, p0, Lnet/fortuna/ical4j/data/CalendarBuilder$ContentHandlerImpl;->propertyFactory:Lnet/fortuna/ical4j/model/PropertyFactory;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/fortuna/ical4j/model/PropertyFactory;->createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v1

    iput-object v1, v0, Lnet/fortuna/ical4j/data/CalendarBuilder;->property:Lnet/fortuna/ical4j/model/Property;

    .line 360
    return-void
.end method
