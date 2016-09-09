.class public interface abstract Lcom/google/android/syncadapters/calendar/timely/ExtendedPropertiesConstants;
.super Ljava/lang/Object;
.source "ExtendedPropertiesConstants.java"


# static fields
.field public static final EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/ExtendedPropertiesConstants;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    return-void
.end method
