.class public final enum Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
.super Ljava/lang/Enum;
.source "UsageHintDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

.field public static final enum FULLSCREEN:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

.field public static final enum INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

.field public static final enum POPUP:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    const-string v1, "FULLSCREEN"

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->FULLSCREEN:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    new-instance v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    const-string v1, "POPUP"

    invoke-direct {v0, v1, v3}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->POPUP:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    new-instance v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    const-string v1, "INPLACE"

    invoke-direct {v0, v1, v4}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    sget-object v1, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->FULLSCREEN:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->POPUP:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->$VALUES:[Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->$VALUES:[Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    invoke-virtual {v0}, [Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    return-object v0
.end method
