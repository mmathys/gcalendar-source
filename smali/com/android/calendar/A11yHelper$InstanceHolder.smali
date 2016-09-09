.class Lcom/android/calendar/A11yHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "A11yHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/A11yHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/calendar/A11yHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/calendar/A11yHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/A11yHelper;-><init>(Lcom/android/calendar/A11yHelper$1;)V

    sput-object v0, Lcom/android/calendar/A11yHelper$InstanceHolder;->INSTANCE:Lcom/android/calendar/A11yHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/android/calendar/A11yHelper;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/calendar/A11yHelper$InstanceHolder;->INSTANCE:Lcom/android/calendar/A11yHelper;

    return-object v0
.end method
