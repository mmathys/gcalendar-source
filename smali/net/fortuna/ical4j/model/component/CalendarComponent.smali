.class public abstract Lnet/fortuna/ical4j/model/component/CalendarComponent;
.super Lnet/fortuna/ical4j/model/Component;
.source "CalendarComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;
    }
.end annotation


# static fields
.field protected static final EMPTY_VALIDATOR:Lnet/fortuna/ical4j/model/Validator;

.field private static final serialVersionUID:J = -0x50f2e1ab19436f10L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/component/CalendarComponent$EmptyValidator;-><init>(Lnet/fortuna/ical4j/model/component/CalendarComponent$1;)V

    sput-object v0, Lnet/fortuna/ical4j/model/component/CalendarComponent;->EMPTY_VALIDATOR:Lnet/fortuna/ical4j/model/Validator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected abstract getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
.end method

.method public final validate(Lnet/fortuna/ical4j/model/property/Method;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;->getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lnet/fortuna/ical4j/model/Validator;->validate()V

    .line 88
    return-void

    .line 86
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
