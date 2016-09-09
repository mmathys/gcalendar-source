.class final enum Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;
.super Ljava/lang/Enum;
.source "QuickCreateUsageHintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Hints"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

.field public static final enum CONTACT:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

.field public static final enum CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

.field public static final enum INITIAL:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

.field public static final enum LOCATION:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;


# instance fields
.field private final mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

.field private final mId:Ljava/lang/String;

.field private final mMessageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    const-string v1, "INITIAL"

    sget v2, Lcom/android/calendar/R$array;->edit_title_quickcreate_oobe_initial:I

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->FULLSCREEN:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;-><init>(Ljava/lang/String;IILcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->INITIAL:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    .line 87
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    const-string v1, "CONTACT"

    sget v2, Lcom/android/calendar/R$array;->edit_title_quickcreate_hints_contact:I

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;-><init>(Ljava/lang/String;IILcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    .line 88
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    const-string v1, "CONTACT_ADDED"

    sget v2, Lcom/android/calendar/R$array;->edit_title_quickcreate_hints_contact_added:I

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->POPUP:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;-><init>(Ljava/lang/String;IILcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    .line 89
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    const-string v1, "LOCATION"

    sget v2, Lcom/android/calendar/R$array;->edit_title_quickcreate_hints_location:I

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;-><init>(Ljava/lang/String;IILcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->LOCATION:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->INITIAL:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->CONTACT_ADDED:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->LOCATION:Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->$VALUES:[Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mMessageResId:I

    .line 97
    iput-object p4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    .line 98
    sget-object v0, Lcom/google/common/base/CaseFormat;->UPPER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    sget-object v1, Lcom/google/common/base/CaseFormat;->LOWER_CAMEL:Lcom/google/common/base/CaseFormat;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "com.google.android.calendar.event.quickcreate.hints."

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mId:Ljava/lang/String;

    .line 100
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mHintType:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->$VALUES:[Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    invoke-virtual {v0}, [Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageResourceId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateUsageHintManager$Hints;->mMessageResId:I

    return v0
.end method
