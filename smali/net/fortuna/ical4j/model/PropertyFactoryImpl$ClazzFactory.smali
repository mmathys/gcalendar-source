.class Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ClazzFactory;
.super Ljava/lang/Object;
.source "PropertyFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/PropertyFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClazzFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$ClazzFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lnet/fortuna/ical4j/model/property/Clazz;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Clazz;-><init>()V

    return-object v0
.end method
