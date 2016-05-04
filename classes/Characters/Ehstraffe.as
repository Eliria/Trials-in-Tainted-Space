﻿package classes.Characters 
{
	import classes.CockClass;
	import classes.Creature;
	import classes.Engine.Combat.DamageTypes.TypeCollection;
	import classes.ItemSlotClass;
	import classes.kGAMECLASS;
	import classes.Util.RandomInCollection;
	import classes.Engine.Combat.DamageTypes.DamageFlag;
	
	import classes.Items.Miscellaneous.EmptySlot;
	import classes.Items.Melee.SurvivalAxe;
	import classes.Items.Guns.MyrRifle;
	import classes.Items.Miscellaneous.Picardine;
	import classes.Items.Miscellaneous.Kirkite;
	import classes.Items.Miscellaneous.Satyrite;
	import classes.Items.Drinks.RedMyrVenom;
	
	import classes.GLOBAL;
	
	import classes.GameData.CombatAttacks;
	import classes.GameData.CombatManager;
	import classes.Engine.Combat.DamageTypes.*;
	import classes.Engine.Combat.*; 
	import classes.Engine.Interfaces.output;
	
	import classes.Engine.Utility.weightedRand;
	
	/**
	 * ...
	 * @author My Butt
	 */
	
	public class Ehstraffe extends Creature
	{
		public function Ehstraffe() 
		{
			this._latestVersion = 1;
			this.version = this._latestVersion;
			this._neverSerialize = true; // Setting this will stop a given NPC class from ever being serialized.
			
			this.short = "Ehstraffe";
			this.originalRace = "myrmedion";
			this.a = "";
			this.capitalA = "";
			this.tallness = 62;
			this.scaleColor = "red";
			
			this.long = "";
			this.customDodge = "The seasoned soldier throws herself sideways. Your attack misses her by an inch and she deftly tumbles back to her feet.";
			this.customBlock = "The female soldier brings up her hatchet and deftly parries your attack. Throwing you off, she then twirls the hand-axe in her hand.";
			this.isPlural = false;
			
			this.shield = new EmptySlot();
			this.meleeWeapon = new SurvivalAxe();
			this.rangedWeapon = new MyrRifle();

			armor.longName = "thick chitin";
			armor.defense = 5;
			armor.hasRandomProperties = true;
			
			this.physiqueRaw = 22;
			this.reflexesRaw = 18;
			this.aimRaw = 10;
			this.intelligenceRaw = 15;
			this.willpowerRaw = 20;
			this.libidoRaw = 20;
			this.shieldsRaw = 0;
			this.energyRaw = 100;
			this.lustRaw = 25;
			
			baseHPResistances = new TypeCollection();
			baseHPResistances.kinetic.damageValue = 10.0;			
			
			this.XPRaw = 200;
			this.level = 5;
			this.credits = 0;
			this.HPMod = 50;
			this.HPRaw = this.HPMax();
			
			//MUCH IS PLACEHOLDER DUE TO LACK OF MYR TYPE PARTS AT CODE TIME.
			this.femininity = 85;
			this.eyeType = 0;
			this.eyeColor = "black";
			this.thickness = 40;
			this.tone = 29;
			this.hairColor = "amber";
			this.furColor = "amber";
			this.hairLength = 3;
			this.hairType = 0;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_SKIN;
			this.skinTone = "dusky red";
			this.skinFlags = new Array();
			this.faceType = 0;
			this.faceFlags = new Array();
			this.tongueType = 0;
			this.lipMod = 1;
			this.earType = 0;
			this.antennae = 2;
			this.antennaeType = 0;
			this.horns = 0;
			this.hornType = 0;
			this.armType = 0;
			this.gills = false;
			this.wingType = 0;
			this.legType = 0;
			this.legCount = 2;
			this.legFlags = [GLOBAL.FLAG_PLANTIGRADE,GLOBAL.FLAG_CHITINOUS];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = 0;
			this.tailCount = 1;
			this.tailFlags = [GLOBAL.FLAG_CHITINOUS];
			
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
			this.hipRatingRaw = 6;
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
			this.buttRatingRaw = 6;
			
			//balls
			this.balls = 0;
			this.cumMultiplierRaw = 10;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQualityRaw = 1;
			this.cumType = GLOBAL.FLUID_TYPE_CUM;
			this.ballSizeRaw = 0;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 4;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 9999;
			this.minutesSinceCum = 635;
			this.timesCum = 255;
			this.cockVirgin = true;
			this.vaginalVirgin = false;
			this.analVirgin = false;
			//Goo is hyper friendly!
			this.elasticity = 1;
			//Fertility is a % out of 100. 
			this.fertilityRaw = 1;
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;
			
			this.breastRows[0].breastRatingRaw = 3;
			this.nippleColor = "red";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_MILK;
			this.milkRate = 1;
			this.ass.wetnessRaw = 0;
			this.ass.loosenessRaw = 3;

			//NO DIX
			this.cocks = new Array();
			//One normalish cunt
			this.vaginas = new Array();
			this.createVagina();
			this.vaginas[0].type = GLOBAL.TYPE_INHUMAN;
			this.vaginas[0].wetnessRaw = 2;
			this.vaginas[0].loosenessRaw = 3;
			this.createPerk("Can Crit", 0, 0, 0, 0);
			
			isUniqueInFight = true;
			btnTargetText = "Ehstraffe";
					
			sexualPreferences.setRandomPrefs(2 + rand(3),1);
			
			this._isLoading = false;
		}
		
		override public function get bustDisplay():String
		{
			return "EHSTRAFFE";
		}
		
		override public function CombatAI(alliedCreatures:Array, hostileCreatures:Array):void
		{
			var target:Creature = selectTarget(hostileCreatures);
			if (target == null) return;
			
			var ally:Creature = alliedCreatures[1];
			
			var numAttacks:int = 5 + rand(2);
			if (hasStatusEffect("Pushed"))
			{
				numAttacks -= statusEffectv1("Pushed");
				addStatusValue("Pushed", 1, -1);
				if (statusEffectv1("Pushed") <= 0) removeStatusEffect("Pushed");
			}
			
			var atks:Array = [
				{ v: axeBlow, w: 10 },
				{ v: punch, w: 10 },
				{ v: openFire, w: 10 },
				{ v: bite, w: 10 }
			];
			
			for (var i:int = 0; i < numAttacks; i++)
			{
				weightedRand(atks)(target, ally);
				output("\n\n");
			}
			
			fazianAppeal();
		}
		
		private var _fazCount:int = 0;
		
		private function fazianAppeal():void
		{
			switch(_fazCount)
			{
				case 0: 
					output("<i>“Gold myr komm-rahds! Please listen to me!”</i> Fazian suddenly shouts, stopping his dance. <i>“This is your chance!”</i>"); 
					output("\n\n<i>“You shut up!”</i> says Ehstraffe furiously.");
					break;
					
				case 1: 
					output("<i>“The moth people are not your friends!”</i> cries Fazian. He slams his leg onto the boards for emphasis. <i>“These red myr are selling you into slavery! If this continues, none of you will ever see home again!”</i>");
					output("\n\n<i>“I said shut up!”</i> screams Ehstraffe. She signals at the two soldiers guarding the pit, and they quickly hurry over to the stage. <i>“He is a silly man!”</i> she says, addressing the uncertain, murmuring mass of gold in front of her. <i>“He grows over-excited! He will get you all killed if you listen to him!”</i>");
					break;
					
				case 2:
					output("<i>“What is happening here is not lawful, it does not have to happen!”</i> shouts Fazian, ducking under a grab from one of the guards with a spin. <i>“If we get out of here, we shall tell the starwalker authorities! They shall put a stop to it!”</i> The collective murmur in the pit is growing into an angry throb...");
					output("\n\n<i>“Remember the last riots!”</i> entreats Ehstraffe. <i>“There is only suffering when you pointlessly fight us! When you behave, when you are peaceful, there are nice things, are there not?”</i>");
					break;
					
				default:
				case 3:
					output("<i>“You are less than nothing to these red myr, and merchandise to the moth people!”</i> cries Fazian, banging his foot down on the stage again and again. <i>“But together you are a force of nature, gold friends! You have nothing to lose but your hon...”</i> one of the guards silences him with a brutal rifle-butt to the skull.");
					output("\n\nThat does it. With a terrible howl, the gold myr begin to grab onto the edges of the pit and haul their way to freedom, pushing their friends upwards.");
					break;
					
			}
			
			_fazCount++;
		}
		
		private function axeBlow(target:Creature, ally:Creature):void
		{
			//Penetrating. Moderate HP damage
			output("One of the red myr swings her axe at you.");
			if (combatMiss(ally, target, -1, -1))
			{
				if (target.shields() > 0) output(" The blow glances off your shield.");
				else output(" You leap out of the way!");
			}
			else
			{
				var dr:DamageResult = applyDamage(new TypeCollection( { kinetic: 7 }, DamageFlag.PENETRATING), ally, target, "suppress");
				
				if (dr.shieldDamage > 0 && dr.hpDamage <= 0) output(" The blow slams into your shield.");
				else if (dr.shieldDamage > 0 && dr.hpDamage > 0) output(" The blow shatters your shield and carries on into you.");
				else output(" The blow thunks heavily home.");
				outputDamage(dr);
				
			}
		}

		private function punch(target:Creature, ally:Creature):void
		{
			//Crushing. Low HP damage, medium energy damage
			output("One of the red myr bulls into you, driving a punch into your midriff.");
			if (combatMiss(ally, target, -1, -1))
			{
				if (target.shields() > 0) output(" Your shield protects you.");
				else output(" You move backwards with her, taking the sting out of the blow.");
			}
			else
			{
				var dr:DamageResult = applyDamage(new TypeCollection( { kinetic: 3 } ), ally, target, "suppress");
				
				if (dr.shieldDamage > 0 && dr.hpDamage <= 0) output(" Your shield absorbs the brunt of the blow.");
				else if (dr.shieldDamage > 0 && dr.hpDamage > 0) output(" The blow shatters your shield and carries on into you, winding you.");
				else output(" Her fist thuds into you, driving the wind out of your lungs.");
				
				outputDamage(dr);
				
				if (dr.hpDamage > 0) target.energy( -10);
			}
		}

		private function openFire(target:Creature, ally:Creature):void
		{
			//Kinetic. High damage, low acc
			output("Getting a clear shot, one of the red myr deafeningly fires a few shots of her slug-launcher at you.");
			
			if (combatMiss(ally, target, -1, 3))
			{
				if (target.shields() > 0) output(" The bullets crack off your shield.");
				else output(" The bullets unnervingly whiff past you.");
			}
			else
			{
				var dr:DamageResult = applyDamage(new TypeCollection( { kinetic: 10 }, DamageFlag.BULLET), ally, target, "suppress");
				
				if (dr.shieldDamage > 0 && dr.hpDamage <= 0) output(" The bullets smash into your shield.");
				else if (dr.shieldDamage > 0 && dr.hpDamage > 0) output(" The bullets shatter your shield, and one or two thud into you.");
				else output(" The bullets thud horribly home.");
				
				outputDamage(dr);
			}
		}

		private function bite(target:Creature, ally:Creature):void
		{
			//Penetrating. Ignores shield. High lust damage
			output("Curling an arm around you, one of the red myr tries to latch her mouth onto your neck, a savagely intimate act.");
			
			if (combatMiss(ally, target, -1, -1))
			{
				output(" You struggle out of her grip before she can manage it.");
			}
			else
			{
				output(" You feel her hot lips on you, her pointed teeth penetrating your [pc.skin]... you struggle out of her grip, but cannot stop a groan escaping your lips as you feel heat being pushed into you,");
				if (target.hasCock()) output(" [pc.eachCock] growing more and more erect");
				if (target.isHerm()) output(" and");
				if (target.hasVagina()) output(" [pc.eachVagina] becoming more and more flush with [pc.femcum]");
				output(".");
				
				applyDamage(new TypeCollection( { drug: 10 } ), ally, target, "minimal");
			}
		}

	}

}