﻿package classes.Characters 
{
	import classes.CockClass;
	import classes.Creature;
	import classes.Engine.Combat.DamageTypes.TypeCollection;
	import classes.Items.Melee.NyreanSpear;
	import classes.Items.Protection.DecentShield;
	import classes.ItemSlotClass;
	import classes.kGAMECLASS;
	import classes.Util.RandomInCollection;
	
	import classes.Items.Guns.HammerPistol;
	import classes.Items.Guns.EagleHandgun;
	import classes.Items.Guns.LaserPistol;
	import classes.Items.Miscellaneous.Picardine;
	import classes.Items.Miscellaneous.Kirkite;
	import classes.Items.Miscellaneous.Satyrite;
	import classes.Items.Drinks.RedMyrVenom;
	import classes.Items.Transformatives.NyreanCandy;
	
	import classes.GLOBAL;
	import classes.GameData.CombatAttacks;
	import classes.GameData.CombatManager;
	import classes.Engine.Combat.DamageTypes.*;
	import classes.Engine.Combat.*; 
	import classes.Engine.Interfaces.output;
	
	/**
	 * ...
	 * @author Gedan
	 */
	
	public class NyreaAlpha extends Creature
	{
		
		public function NyreaAlpha() 
		{
			this._latestVersion = 1;
			this.version = this._latestVersion;
			this._neverSerialize = true; // Setting this will stop a given NPC class from ever being serialized.
			
			this.short = "nyrea huntress";
			this.originalRace = "nyrea";
			this.a = "the ";
			this.capitalA = "The ";
			this.tallness = 72;
			this.scaleColor = "green";
			
			this.long = "This insectile woman looks like a black-armored amazon, tall and exceptionally buxom, with dark chitin plates covering her arms and legs, combining into an underbust corset of armor to protect her torso -- though conveniently leaving her big tits and groin exposed -- a groin which is sporting an impressive cock. Easily a foot long, her shaft is barely restrained by a padded chainmail bikini, though even partially covered you can see how thick and heavy it is. Even as one weapon draws your attention, the huntress moves with preternatural grace, circling you, probing at your defenses with her long, steel-tipped spear. Any hesitation, and weakness, and she'll be on you!";
			
			this.isPlural = false;
			
			this.shield = new DecentShield();
			this.meleeWeapon = new NyreanSpear();
			
			this.physiqueRaw = 15;
			this.reflexesRaw = 15;
			this.aimRaw = 15;
			this.intelligenceRaw = 8;
			this.willpowerRaw = 8;
			this.libidoRaw = 50;
			this.shieldsRaw = this.shieldsMax();
			this.energyRaw = 100;
			this.lustRaw = 10;
			
			baseHPResistances = new TypeCollection();
			baseHPResistances.kinetic.damageValue = 25.0;
			baseHPResistances.electric.damageValue = 25.0;
			baseHPResistances.burning.damageValue = 25.0;
			
			
			this.XPRaw = 300;
			this.level = 7;
			this.credits = 0;
			this.HPMod = 50;
			this.HPRaw = this.HPMax();
			
			this.femininity = 100;
			this.eyeType = 0;
			this.eyeColor = "red";
			this.thickness = 40;
			this.tone = 29;
			this.hairColor = "red";
			this.furColor = "tawny";
			this.hairLength = 0;
			this.hairType = 0;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_SCALES;
			this.skinTone = "pink";
			this.skinFlags = new Array();
			this.faceType = GLOBAL.TYPE_NYREA;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_NYREA;
			this.lipMod = 1;
			this.earType = GLOBAL.TYPE_NYREA;
			this.antennae = 0;
			this.antennaeType = 0;
			this.horns = 0;
			this.hornType = 0;
			this.armType = 0;
			this.gills = false;
			this.wingType = 0;
			this.legType = GLOBAL.TYPE_NYREA;
			this.legCount = 2;
			this.legFlags = [];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = 0;
			this.tailCount = 0;
			this.tailFlags = [];
			
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 5;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRatingRaw = 10;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRatingRaw = 10;
			//No dicks here!
			this.cocks = new Array();
			//balls
			this.balls = 0;
			this.cumMultiplierRaw = 1.5;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQualityRaw = 1;
			this.cumType = GLOBAL.FLUID_TYPE_NYREA_CUM;
			this.ballSizeRaw = 2;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 4;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 9999;
			this.minutesSinceCum = 9000;
			this.timesCum = 122;
			this.cockVirgin = true;
			this.vaginalVirgin = false;
			this.analVirgin = true;
			//Goo is hyper friendly!
			this.elasticity = 3;
			//Fertility is a % out of 100. 
			this.fertilityRaw = 1;
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;
			
			this.breastRows[0].breastRatingRaw = 6;
			this.nippleColor = "green";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_MILK;
			this.milkRate = 1;
			this.ass.wetnessRaw = 0;
			this.ass.loosenessRaw = 2;
			
			this.hairLength = 10;
			
			this.cocks = [];
			this.cocks.push(new CockClass());
			(this.cocks[0] as CockClass).cType = GLOBAL.TYPE_NYREA;
			(this.cocks[0] as CockClass).cLengthRaw = 13;
			(this.cocks[0] as CockClass).cThicknessRatioRaw = 1.66;
			(this.cocks[0] as CockClass).addFlag(GLOBAL.FLAG_KNOTTED);
			(this.cocks[0] as CockClass).virgin = false;
			this.cockVirgin = false;
			
			isUniqueInFight = true;
			btnTargetText = "Nyrea";
			
			tallness = 68 + (rand(12) - 6);
			rangedWeapon = new (RandomInCollection(EagleHandgun, HammerPistol, LaserPistol))();
			
			sexualPreferences.setPref(GLOBAL.SEXPREF_FEMININE,		GLOBAL.REALLY_LIKES_SEXPREF);
			sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_BREASTS,		GLOBAL.REALLY_LIKES_SEXPREF);
			sexualPreferences.setPref(GLOBAL.SEXPREF_BIG_BUTTS,		GLOBAL.KINDA_LIKES_SEXPREF);
			sexualPreferences.setPref(GLOBAL.SEXPREF_NEUTER,			GLOBAL.KINDA_DISLIKES_SEXPREF);
			sexualPreferences.setPref(GLOBAL.SEXPREF_VAGINAL_WETNESS,	GLOBAL.KINDA_LIKES_SEXPREF);
			sexualPreferences.setPref(GLOBAL.SEXPREF_MASCULINE,		GLOBAL.KINDA_LIKES_SEXPREF);
			
			if (rand(40) == 0) inventory.push(new Kirkite());
			else if (rand(50) == 0) inventory.push(new Satyrite());
			else if (rand(20) == 0) inventory.push(new Picardine());
			else if (rand(20) == 0)	inventory.push(rangedWeapon.makeCopy());
			else if (rand(20) == 0) inventory.push(meleeWeapon.makeCopy());
			else if (rand(3) == 0) inventory.push(new RedMyrVenom());
			else if (rand(3) == 0) inventory.push(new NyreanCandy());
			
			this._isLoading = false;
		}
		
		override public function get bustDisplay():String
		{
			return "NYREA_ALPHA";
		}
		
		override public function CombatAI(alliedCreatures:Array, hostileCreatures:Array):void
		{
			var target:Creature = selectTarget(hostileCreatures);
			if (target == null) return;
			
			var attacks:Array = [];

			if(!hasStatusEffect("Disarmed"))
			{
				if (rangedWeapon) attacks.push(nyreaAlphaUseGun);
				attacks.push(nyreaSpearThrust);
				attacks.push(nyreaPowerStrike);
				if (!target.hasStatusEffect("Grappled") && !hasStatusEffect("Net Cooldown")) attacks.push(nyreaNetThrow);
			}

			attacks.push(nyreaMeatSpin);
			attacks.push(nyreaPoledance);
			attacks.push(nyreaMilkRub);

			attacks[rand(attacks.length)](target);
		}
		
		public function nyreaMilkRub(target:Creature):void
		{
			//Light lust attack, heals some of her HP
			output("Giving you a cocky look, the nyrea pulls up the thin veneer of chain covering her ample bosom and cups her tits, giving them a long, obviously-pleasurable squeeze. A trickle of cream-colored milk spurts out at her touch, barely needing to be coaxed. She winks at you, bringing one of her teats to her lips and drinking long as the other drizzles all over her body, which she deftly rubs into her skin and armor.\n");

			var damage:TypeCollection = new TypeCollection( { tease: 15 } );
			;

			if (rand(10) <= 3 && !(target.hasArmor() && target.armor.hasFlag(GLOBAL.ITEM_FLAG_AIRTIGHT)))
			{
				output("\nGod, that smells delicious...");
			}
			else
			{
				output("\nYou try to contain the watering of your mouth as you watch the lewd display in front of you. What you wouldn't give for a taste of that sweet cream...");
			}

			applyDamage(damageRand(damage, 15), this, target);
		}
		
		public function nyreaNetThrow(target:Creature):void
		{
			createStatusEffect("Net Cooldown", 5, 0, 0, 0, true);

			output("Using her longspear to force some distance between you, the nyrea reaches into her pack and pulls out another hunting net. With a flick of her wrist, she hurls it at you.\n");

			if (rangedCombatMiss(this, target, 0, 3))
			{
				output("\nYou roll aside, letting the net go clattering off into the darkness.\n");
			}
			else
			{
				output("\nYou try and dodge, but too late! You give a yelp as the heavy net carries you down to the ground, entangling you!");
				target.createStatusEffect("Grappled", 0, 35, 0, 0, false, "Constrict", "You're stuck in a nyrea's hunting net!", true, 0);
			}
		}
		
		public function nyreaPoledance(target:Creature):void
		{
			//Her preferred lust attack against males. 
			output("The nyrea plants her spear in the ground, leaning heavily on the sturdy shaft, pressing it between her impressive rack. <i>“Like what you see?”</i> she giggles, voice suddenly sultry as she leans back from the haft, twisting around you give you a full view of her taut ass and long, chitinous legs. She bends over, rubbing her spear through her crack, smearing it with her psuedo-cock’s ample pre. <i>“Come off it already... put your weapons down...</i>");
			//if (enemy is NyreaBeta) output("<i> I promise you’ll be glad you did</i>");
			output("<i> You can’t win against a body like mine... I’m so above your class, offworlder. Just submit, like you know you want to</i>");
			output("<i>.”</i>\n");

			// 9999
			if (target.lust() >= target.lustMax() * 0.75)
			{
				output("\nYou look away from her tantalizing display, doing your best to contain your lust.");
			}
			else
			{
				output("\nYou can't deny the growing heat in your loins as the nyrea puts on a show for you, all but inviting you into her embrace...");

				var damage:TypeCollection = new TypeCollection( { tease: 15 } );
				applyDamage(damageRand(damage, 15), this, target);
			}
		}
		
		private function nyreaAlphaUseGun(target:Creature):void
		{
			CombatAttacks.RangedAttack(this, target);
		}
		
		private function nyreaSpearThrust(target:Creature):void
		{
			//Basic Attack
			output("The nyrea charges forward, thrusting her heavy spear at you!\n");

			if (combatMiss(this, target))
			{
				output("\nYou duck aside, letting her momentum carry her past you.");
			}
			else
			{
				output("\nShe turns the blade at the last second, slamming the blunted haft of the spear into your chest, throwing you back with the force of the blow! ");

				applyDamage(damageRand(meleeDamage(), 15), this, target);
			}
		}
		
		private function nyreaMeatSpin(target:Creature):void
		{
			//Basic lust attack. She'll use this especially against females.
			output("With a lusty grin, the nyrean woman pulls up her chainmail bikini, letting her massive pseudo-cock flop out. Her hands rub across the long length, emphasizing its huge, blunted head and the fearsomely thick knot at its base, clearly ready to tie you like a bitch. She thrusts her hips, making the semi-turgid member bounce. A dribble of lubricant is flicked out, splattering across your [pc.face].\n");

			// 9999
			if (rand(10) == 0)
			{
				output("\nYou wipe her cock-drool off with disgust.");
			}
			else
			{
				output("\nUnwittingly, you breathe in at that exact moment, getting a full blast of the potent sexual aroma the insectile beauty is giving off.");

				var damage:TypeCollection = new TypeCollection( { tease: 7, pheromone: 7 } );
				applyDamage(damageRand(damage, 15), this, target);
			}
		}
		
		private function nyreaPowerStrike(target:Creature):void
		{
			//Rarest of her attacks, ramps up use on low HP. Lower chance to hit, but HEAVY damage. Has a chance to STAGGER the PC.
			output("The nyrea woman rushes at you, leaping into the air and issuing a mighty warcry as she slams her spear down at you with crushing force.");

			if (combatMiss(this, target))
			{
				output(" You tumble out of the way in the nick of time, looking back to see the huntress crash into the ground, nearly falling over thanks to the force of her attack. She staggers to her feet and scowls. <i>“You wanted to do this the hard way!”</i>\n");
			}
			else
			{
				output(" You cry out as the spear crashes into you, throwing you to the ground with nearly bonecrushing force.");
				
				var damage:TypeCollection = meleeDamage();
				damage.multiply(1.25);
				applyDamage(damageRand(damage, 15), this, target);

				if (rand(2) == 0)
				{
					output("\nYou blink hard");
					if (target.shieldsRaw > 0) output(" thankful your shields held");
					else output(" wiping blood from your brow");
					output(" as your vision swims. The nyrea, battered herself, scowls at you. <i>“You wanted to do this the hard way!”</i>");

					target.createStatusEffect("Tripped", 0, 0, 0, 0, false, "DefenseDown", "You've been tripped, reducing your effective physique and reflexes by 4. You'll have to spend an action standing up.", true, 0);
				}
			}
		}
	}
}