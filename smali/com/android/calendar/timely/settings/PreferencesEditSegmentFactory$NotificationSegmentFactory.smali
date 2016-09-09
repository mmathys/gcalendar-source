.class Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;
.source "PreferencesEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationSegmentFactory"
.end annotation


# instance fields
.field private final mHeaderText:Ljava/lang/String;

.field private final mHeaderTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;Landroid/graphics/Typeface;I)V
    .locals 1

    .prologue
    .line 160
    sget v0, Lcom/android/calendar/R$layout;->preferences_segment_notifications:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 161
    iput-object p3, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;->mHeaderTypeface:Landroid/graphics/Typeface;

    .line 162
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;->mHeaderText:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;->createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v1

    .line 168
    sget v0, Lcom/android/calendar/R$id;->notifications_label:I

    invoke-virtual {v1, v0}, Lcom/android/calendar/editor/EditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;->mHeaderTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    iget-object v2, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$NotificationSegmentFactory;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object v1
.end method
